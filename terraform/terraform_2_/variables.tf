variable "vpc_cidr_block" {}
variable "subnets_type" {
    type = list(string)
}
variable "subnet_cidr"{
    type = list(string)
}

variable "public_ip_asc" {
    type = list(bool)
  
}