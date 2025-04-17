variable "one" {
  default = ["one","two"]
}

output "all" {
  value =<<EOT
%{~for i in var.one ~}
${i}
%{~ endfor ~}
EOT
}





