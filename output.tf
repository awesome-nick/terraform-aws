output "DNS_name_elb" {
    value = ["${aws_elb.awesome_elb.dns_name}"]
}