variable "len" {
  default = 16
}

resource "random_string" "password" {
  length = "${var.len}"
  special = true
}

output "password" {
  value = "${random_string.password.result}"
}