resource "aws_security_group" "ec2_sg" {
    ingress {
        from_port = "${var.server_port}"
        to_port = "${var.server_port}"
        protocol = "tcp"
        cidr_blocks = ["${var.my_public_ip}"]
    }
        ingress {
        from_port = "${var.server_port}"
        to_port = "${var.server_port}"
        protocol = "tcp"
        security_groups = ["sg-0f11b49aa83ce0174"]
    }
        ingress {
        from_port = "${var.ssh_port}"
        to_port = "${var.ssh_port}"
        protocol = "tcp"
        cidr_blocks = ["${var.my_public_ip}"]
    }
    egress {
        from_port = 0
        to_port = 0
        protocol = "-1"
        cidr_blocks = ["0.0.0.0/0"]
    }
}