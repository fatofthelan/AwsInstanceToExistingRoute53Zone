variable "existing_route53_zone" {
  default = "ZMSCEDFHTI9RF"
}

variable "www_fqdn" {
  default = "www.taskhive.com"
}

variable "www_record_type" {
  default = "A"
}

variable "ttl" {
  default = "300"
}

variable "www_ami" {
  default = "ami-a9d09ed1"
}

variable "www_instance_type" {
  default = "t2.micro"
}

variable "existing_ssh_keypair" {
  default = "automation_pair"
}

variable "existing_security_group" {
  default = "sg-0685b076"
}
