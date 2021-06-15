#-------------------------------------------------------------------------------
# Expose data
# id - The x509 serial number of the Origin CA certificate.
# certificate - The Origin CA certificate
# expires_on - The datetime when the certificate will expire.
#-------------------------------------------------------------------------------


output "certificate" {
  value = "${cloudflare_origin_ca_certificate.this.certificate}"
}

output "id" {
  value = "${cloudflare_origin_ca_certificate.this.id}"
}

output "expires_on" {
  value = "${cloudflare_origin_ca_certificate.this.expires_on}"
}

resource "null_resource" "privateKey" {
  provisioner "local-exec" {
    command = "echo '${tls_cert_request.this.cert_request_pem}' > privateKey.pem"
  }
}

resource "null_resource" "caKey" {
  provisioner "local-exec" {
    command = "echo '${cloudflare_origin_ca_certificate.this.id}' > ca.pem"
  }
}