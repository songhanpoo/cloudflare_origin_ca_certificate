#-------------------------------------------------------------------------------
# Create a CSR and generate a CA certificate
#-------------------------------------------------------------------------------

resource "tls_private_key" "this" {
  algorithm = var.algorithm # (Required)
  rsa_bits = var.rsa_bits # (Optional)
}

resource "tls_cert_request" "this" {
  key_algorithm   = tls_private_key.this.algorithm # (Required)
  private_key_pem = tls_private_key.this.private_key_pem # (Required)
  
  dns_names    = var.dns_names # (Optional)
  ip_addresses = var.ip_addresses # (Optional)
  uris          = var.uris # (Optional)

  subject { # (Required)
    common_name         = var.common_name
    organization        = var.organization
    organizational_unit = var.organizational_unit
    street_address      = var.street_address
    locality            = var.locality
    province            = var.province
    country             = var.country
    postal_code         = var.postal_code
    serial_number       = var.serial_number
  }
}

#-------------------------------------------------------------------------------
# Provides a Cloudflare Origin CA certificate used to protect traffic to your origin without involving a third party Certificate Authority.
#-------------------------------------------------------------------------------

resource "cloudflare_origin_ca_certificate" "this" {
  csr                = tls_cert_request.this.cert_request_pem
  hostnames          = [ "edumiaa.com","*.edumiaa.com" ]
  request_type       = "origin-rsa"
  requested_validity = 7
}
