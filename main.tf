/**
 * # Linux swap configuration
 *
 * [![CI](https://github.com/figurate/terraform-null-swapfile/actions/workflows/main.yml/badge.svg)](https://github.com/figurate/terraform-null-swapfile/actions/workflows/main.yml)
 *
 *
 * Configure a swap file on a Linux host.
 */
resource "null_resource" "target_host" {

  triggers = {
    target = var.target_host
  }

  provisioner "remote-exec" {
    inline = [
      "mkdir -v /var/cache/swap && cd /var/cache/swap/",
      "dd if=/dev/zero of=swapfile bs=1K count=${var.swapfile_size}M && chmod 600 swapfile",
      "mkswap swapfile && swapon swapfile",
      "echo '/var/cache/swap/swapfile none swap sw 0 0' | tee -a /etc/fstab"
    ]

    connection {
      type             = "ssh"
      user             = "root"
      host             = var.target_host
      private_key      = file(var.ssh_private_key)
      bastion_host     = var.bastion_host
      bastion_host_key = var.bastion_host_key != null ? file(var.bastion_host_key) : null
    }
  }
}
