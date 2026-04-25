resource "aws_instance" "example" {
    ami = var.instance_ami
    instance_type = var.instance_type
    key_name = var.key_name
    vpc_security_group_ids = [var.security_group_id]
    tags = var.instance_tags
  
}



# resource "aws_instance" "example" {
#     module "myModuleName" {
#        source = ""
#     }
#     instance_type = var.instance_type
#     ami = var.instance_ami
#     key_name = var.key_name
#     vpc_security_group_ids = [var.security_group_id]
# }
