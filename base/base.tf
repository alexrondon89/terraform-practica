provider "aws"{
	region = "${var.region}"
}

resource "aws_instance" "base"{
	ami =  "${var.ami[var.region]}"
	instance_type = "t2.micro"
	vpc_security_group_ids = ["${var.security_group_ids}"]
}

resource "aws_eip" "base"{
	instance = "${aws_instance.base.id}"
	vpc = true
}
