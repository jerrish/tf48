variable "onprem_server" {}

variable "rdpport" {
    type = number
}

variable "httpport" {
    type = number
}

variable "nfsport" {
    type = number
}

variable "tfprotocol" {}


#terraform apply --auto-approve --var="onprem_server=10.0.0.10/32"
#setx TF_VAR_tfprotocol udp
#Set-Item -Path env:TF_VAR_tfprotocol -Value "udp"

