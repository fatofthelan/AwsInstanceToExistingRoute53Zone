/* Example template to add a new instance and create a
   Route53 DNS entry to an existing zone. Preferred to
   importing the Route53 zone and risk destroying it
   when destroying the instance.
*/

/* AWS Instance to be created. */
resource "aws_instance" "www" {
  ami                    = "${var.www_ami}"
  instance_type          = "${var.www_instance_type}"
  key_name               = "${var.existing_ssh_keypair}"
  vpc_security_group_ids = ["${var.existing_security_group}"]
}

/* Elastic IP to be created. */
resource "aws_eip" "ip" {
  instance = "${aws_instance.www.id}"
}

/* DNS record for the above AWS Instance to be created. */
resource "aws_route53_record" "www_record" {
  zone_id = "${var.existing_route53_zone}"
  name    = "${var.www_fqdn}"
  type    = "${var.www_record_type}"
  records = ["${aws_eip.ip.public_ip}"]
  ttl     = "${var.ttl}"
}
