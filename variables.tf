variable "instance_type" {
  description = "The type of instance to use for the EC2 instance."
  type        = string
}

variable "instance_ami" {
    description = "The AMI ID to use for the EC2 instance."
    type        = string
    default = "ami-0c94855ba95c71c99"
}
variable "key_name" {
    description = "The name of the key pair to use for the EC2 instance."
    type        = string
    default = "amazonlinux"
}
variable "security_group_id" {
    description = "The ID of the security group to associate with the EC2 instance."
    type        = string
    default = "sg-0a1b2c3d4e5f6g7h8"
}

variable "instance_tags" {
  type = map(string)
  default = {
    Name = "server-module"
  }
}

variable "security_groupname" {
    description = "The name of the security group."
    type        = string
    default = "server-module-sg"
  
}

variable "security_group_description" {
    description = "The description of the security group."
    type        = string
    default = "Security group for server module"
  
}

variable "ssh_port" {
    description = "The port number for SSH access."
    type        = number
    default = 22
  
}

# variable "security_group_id" {
#     description = "The ID of the security group to associate with the EC2 instance."
#     type        = list(string)
#     default = [ ]
  
# }

output "public_ip" {
    value = aws_instance.example.public_ip
}

