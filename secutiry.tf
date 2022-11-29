resource "aws_security_group" "ingress-all-test" {

name = "allow-all-sq"
vpc_id = "${aws_vpc.test-env.id}"

ingress {
    description         = "Port for Elastic"
    cidr_blocks         = ["0.0.0.0/0"]
    from_port           = 12443
    to_port             = 12443
    protocol            = "tcp"
    ipv6_cidr_blocks    = ["::/0"]
}

ingress {
    description         = "Port for Elastic"
    cidr_blocks         = ["0.0.0.0/0"]
    from_port           = 9243
    to_port             = 9243
    protocol            = "tcp"
    ipv6_cidr_blocks    = ["::/0"]
}

ingress {
    description         = "Port for Elastic"
    cidr_blocks         = ["0.0.0.0/0"]
    from_port           = 12400
    to_port             = 12400
    protocol            = "tcp"
    ipv6_cidr_blocks    = ["::/0"]
}

ingress {
    description         = "SSH from VPC"
    cidr_blocks         = ["0.0.0.0/0"]
    from_port           = 22
    to_port             = 22
    protocol            = "tcp"
    ipv6_cidr_blocks    = ["::/0"]
}

ingress {
    description      = "HTTP from VPC"
    from_port        = 80
    to_port          = 80
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
}
ingress {
    description      = "HTTPS from VPC"
    from_port        = 443
    to_port          = 443
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
}

egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
}

}