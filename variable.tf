variable "vpc_cidr" {
#   default = "10.0.0.0/16"
  description= "enter the cidr the block of vpc"
}

variable "subnet1_cidr" {
    # default = "10.0.0.0/24"
    description = "enter the subnet1 cidr"
  
}

variable "launch_type" {
#   default = "FARGATE"
  description = "enter either FARGATE or EC2"
}