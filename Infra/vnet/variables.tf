variable "prefix" {
  type = string
  description = "test-prefix"
}

variable "addr-space" {
  type = list(string)
  description = "test-cidr"
}

variable "rg-location" {
  type = string
  description = "test-location"
}

variable "rg-name" {
  type = string
  description = "test-name"
}