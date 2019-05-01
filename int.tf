variable "min" {
 default = 1
}

variable "max" {
 default = 9999
}

resource "random_integer" "pin" {
  min     = "${var.min}"
  max     = "${var.max}"
}

output "pin" {
  value = "${random_integer.pin.result}"
}