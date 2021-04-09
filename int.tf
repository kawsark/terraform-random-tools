
variable "num_of_pins" {
  default = 1
}

variable "min" {
 default = 1
}

variable "max" {
 default = 9999
}

resource "random_integer" "pin" {
  count = var.num_of_pins
  min     = var.min
  max     = var.max
}

output "pin" {
  value = random_integer.pin.*.result
}
