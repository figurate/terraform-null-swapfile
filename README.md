# Linux swap configuration

Configure a swap file on a Linux host.

## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| null | n/a |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| bastion\_host | Bastion host used to access target host | `any` | `null` | no |
| bastion\_host\_key | Location of private key file for SSH access to bastion host | `any` | `null` | no |
| ssh\_private\_key | Location of private key file for SSH access to the host | `any` | n/a | yes |
| swapfile\_size | Size of the swapfile to create (GB) | `number` | `4` | no |
| target\_host | The target host | `any` | n/a | yes |
| user | Username for connecting to the host | `any` | n/a | yes |

## Outputs

No output.

