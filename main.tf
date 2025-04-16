# resource "aws_instance" "main" {
#
#   for_each = toset(var.instance_types)
#   ami = "ami-00a929b66ed6e0de6"
#   instance_type = "${each.value}"
#
#   tags  = {
#     Name = "instance-${each.key}"
#   }
# }

variable "instance_types" {
  type = list(string)
  default = ["t2.micro","t3.small","t3.medium"]
}

output "instances" {
  value = {for i in var.instance_types: instance_type => i }
}