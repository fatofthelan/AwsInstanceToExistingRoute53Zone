output "AWS Instance Elastic IP" {
  value = "${aws_eip.ip.public_ip}"
}

output "AWS Instance Management FQDN" {
  value = "${var.www_fqdn}"
}
