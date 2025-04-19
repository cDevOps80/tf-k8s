variable "one" {
  default = ["one","two",["three","four"],"six"]
}

output "all" {
  value = flatten(var.one)
}