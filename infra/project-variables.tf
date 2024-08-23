variable "region" {
  type = string
}

variable "instance" {
  type = string
  default = "001"
  description = "id correlative of resource"
}

variable "environment" {
  type = string
}

variable "project" {
  type = string
  description = "project name abbreviation"
}

variable "resource_type" {
  type = string
  description = "resource name abbreviation"
}