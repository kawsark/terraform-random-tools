variable "len" {
  default = 16
}

resource "random_string" "password" {
  length = "${var.len}"
  special = true
}

resource "random_string" "simpler_password" {
  length = "${var.len}"
  special = true
  override_special = "*#$"
}

resource "random_string" "alnum_password" {
  length = "${var.len}"
  special = false
}

output "password" {
  value = "${random_string.password.result}"
}

output "simpler_password" {
  value = "${random_string.simpler_password.result}"
}

output "alnum_password" {
  value = "${random_string.alnum_password.result}"
}