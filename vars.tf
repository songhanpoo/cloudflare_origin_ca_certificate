#-------------------------------------------------------------------------------
# VARIABLE tls_private_key
#-------------------------------------------------------------------------------

variable "algorithm" {
  type = string
  description = "value"
  default = "RSA"
  validation {
    # regex(...) fails if it cannot find a match
    condition     = can(regex("(RSA|ECDSA)", var.algorithm))
    error_message = "(Required) The name of the algorithm to use for the key. Currently-supported values are \"RSA\" and \"ECDSA\"."
  }
}

variable "rsa_bits" {
  type = number
  description = "(Optional) When algorithm is \"RSA\", the size of the generated RSA key in bits. Defaults to 2048. "
  default = "2048"
}

#-------------------------------------------------------------------------------
# VARIABLE tls_cert_request
#-------------------------------------------------------------------------------

variable "dns_names" {
  type = list(string)
  description = "(Optional) List of DNS names for which a certificate is being requested."
  default = [""]
}

variable "ip_addresses" {
  type = list(string)
  description = "(Optional) List of IP addresses for which a certificate is being requested."
  default = [ "" ]

}

variable "uris" {
  type = list(string)
  description = "(Optional) List of URIs for which a certificate is being requested."
  default = [ "" ]
}

variable "common_name" {
  type = string
  default = ""
}

variable "organization" {
  type = string
}

variable "organizational_unit" {
  type = string
  default = ""

}

variable "street_address" {
  type = list(string)
  description = "value"
  default = [""]
}

variable "locality" {
  type = string  
  default = ""
}

variable "province" {
  type = string  
  default = ""
}

variable "country" {
  type = string  
  default = ""
}

variable "postal_code" {
  type = string  
  default = ""
}

variable "serial_number" {
  type = string  
  default = ""
}

#-------------------------------------------------------------------------------
# VARIABLE cloudflare_origin_ca_certificate
#-------------------------------------------------------------------------------

variable "hostnames" {
  type = list(string)
  description = "(Required) An array of hostnames or wildcard names bound to the certificate."
}

variable "request_type" {
  type = string
  description = "(Required) The signature type desired on the certificate."
}

variable "requested_validity" {
  type = number
  description = "(Optional) The number of days for which the certificate should be valid."
}



