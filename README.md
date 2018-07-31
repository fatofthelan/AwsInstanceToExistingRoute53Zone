###Simple AWS Instance Into Existing Route53 Zone Terraform template

Use this example template to add a new AWS instance and create a Route53 DNS entry to an existing zone. Preferred to importing the Route53 zone and risk destroying it when destroying the instance.

To use, simply adjust the applicable variables in the ```vars.tf``` file to reflect your Route53 zone ID, AMI FQDN, etc.
