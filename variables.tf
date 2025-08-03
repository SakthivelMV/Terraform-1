variable "aws_region" {
  default = "ap-south-1"
}

variable "ami_id" {
  default = "ami-021a584b49225376d" # Ubuntu #ami-021a584b49225376d
}

variable "instance_type" {
  default = "t3.micro"
}

variable "key_name" {
  description = "part1"
}