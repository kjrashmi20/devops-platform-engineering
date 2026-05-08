variable "aws_region" {
  default = "ap-south-1"
}

variable "project_name" {
  default = "devops-platform"
}

variable "environment" {
  default = "dev"
}

variable "vpc_cidr" {
  default = "10.0.0.0/16"
}

variable "public_subnet_cidr" {
  default = "10.0.1.0/24"
}

variable "instance_type" {
  default = "t3.medium"
}

variable "key_name" {
  default = "cicd"
}
