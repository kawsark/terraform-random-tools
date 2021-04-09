variable "num_of_pws" {
  default = 1
}

variable "len" {
  default = 16
}

resource "random_string" "password" {
  count =  var.num_of_pws
  length = var.len
  special = true
}

output "password" {
  value = random_string.password.*.result
}
