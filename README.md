# cloudflare_record

This module creates cloudflare_origin_ca_certificate.

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| [cloudflare/cloudflare](https://github.com/cloudflare/terraform-provider-cloudflare) | >= 2.21.0 |
| [terraform](#requirement\_aws) | >= 0.15.3 |

## Providers

| Name | Version |
|------|---------|
| [cloudflare/cloudflare](https://github.com/cloudflare/terraform-provider-cloudflare) | >= 2.49 |

## Modules

| Name |
|------|
| [tls_private_key](https://registry.terraform.io/providers/hashicorp/tls/latest/docs/resources/private_key) |
| [tls_cert_request](https://github.com/cloudflare/terraform-provider-cloudflare) |

## Resources

| Name | Type |
|------|------|
| [cloudflare_origin_ca_certificate.this](https://registry.terraform.io/providers/cloudflare/cloudflare/latest/docs/resources/origin_ca_certificate) | resource |

## Inputs
| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| [algorithm](#input\_algorithm) | The name of the algorithm to use for the key. Currently-supported values are \"RSA\" and \"ECDSA\". | `string` | `RSA` | yes |
| [rsa_bits](#input\_rsa_bits) | When algorithm is \"RSA\", the size of the generated RSA key in bits. Defaults to 2048.  | `number` | `2048` | no |
| [dns_names](#input\_dns_names) | List of DNS names for which a certificate is being requested. | `list(string)` | `{}` | no |
| [hostnames](#input\_hostnames) | An array of hostnames or wildcard names bound to the certificate. | `list(string)` | `{}` | yes |
| [request_type](#input\_request_type) | The signature type desired on the certificate.  | `string` | `{}` | yes |
| [dns_names](#input\_dns_names) | The number of days for which the certificate should be valid. | `number` | `{}` | no |
| [dns_names](#input\_dns_names) | List of DNS names for which a certificate is being requested. | `list(string)` | `{}` | no |
| [ip_addresses](#input\_ip_addresses) | List of IP addresses for which a certificate is being requested.  | `list(string)` | `{}` | no |
| [uri](#input\_uri) | List of URIs for which a certificate is being requested. | `list(string)` | `{}` | no |
| [common_name](#input\_common_name) |  | `string` | `{}` | no |
| [organization](#input\_organization) |  | `string` | `{}` | no |
| [organizational_unit](#input\_organizational_unit) | | `string` | `{}` | no |
| [street_address](#input\_street_address) | | `string` | `{}` | no |
| [locality](#input\_locality) |  | `string` | `{}` | no |
| [province](#input\_province) |  | `string` | `{}` | no |
| [country](#input\_country) |  | `string` | `{}` | no |
| [postal_code](#input\_postal_code) |  | `string` | `{}` | no |
| [serial_number](#input\_serial_number) |  | `string` | `{}` | no |
| [email](#input\_email) | This is email for authen with cloudflare | `string` | `{}` | yes |
| [api_user_service_key](#input\_api_user_service_key) | This is api_user_service_key for authen with cloudflare | `string` | `{}` | yes |
| [api_key](#input\_api_key) | This is api_key for authen with cloudflare | `string` | `{}` | yes |
| [api_token](#input\_api_token) | This is api_token for authen with cloudflare | `string` | `{}` | yes |


## Outputs
### Console output
| Name | Description |
|------|-------------|
| | Name of Cloudflare console |
| [cloudflare\_certificate](#output\_certificate) | The Origin CA certificate |
| [cloudflare\_id](#output\_id) | The x509 serial number of the Origin CA certificate. |
| [cloudflare\_expires_on](#output\_expires_on) | The datetime when the certificate will expire. |

### File output
| Name | Description | Type of File |
|------|-------------| -----|
| | Name of Cloudflare file locally |
| [cloudflare\_privateKey](#output\_privateKey) | \(privateKey.PEM\) The PrivateKey file locally where your location apply this. | privateKey.PEM |
| [cloudflare\_caKey](#output\_caKey) | The Origin CA certificate file locally where your location apply this.| caKey.PEM |

## Run Locally

Clone the project

```bash
  git clone https://github.com/songhanpoo/cloudflare_origin_ca_certificate.git
```

Go to the project directory

```bash
  cd cloudflare_origin_ca_certificate
```

Install dependencies

```bash
  terraform init
```

Recheck plan for apply to your cloudflare

```bash
  terraform plan
```

Apply plan

```bash
  terraform apply -auto-approve
```
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->