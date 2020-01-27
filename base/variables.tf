
variable "region"{
	description = "aws region"
	default = "us-east-1"
}

variable "ami"{
	type = "map"
	default ={
	  us-east-1 = "ami-0d729a60"
	  us-west-1 = "ami-7c4b331c"
	}
	description = "the AMIs to use"	
}

variable "security_group_ids"{
	description = "list of security group ids"
	default = ["sg-4c4a671a", "sg-067d1405153bbc8e2"]
}


