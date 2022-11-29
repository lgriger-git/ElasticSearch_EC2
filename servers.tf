resource "aws_instance" "test-ec2-instance" {

  count = "${var.count_instances}"

  ami = "${var.ami_id}"
  instance_type = "${var.instance_type}"
  key_name = "${var.ami_key_pair_name}"
  security_groups = ["${aws_security_group.ingress-all-test.id}"]
  associate_public_ip_address = true

tags = {
    Name = "${var.ami_name}-${count.index}"
  }
 connection {
    type    = "ssh"
    host    = self.public_ip
    user    = "ec2-user"
    timeout = "4m"
  }
subnet_id = "${aws_subnet.subnet-uno.id}"
}