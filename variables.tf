variable "region" {
  default = "us-east-1"
}

variable "instance_count" {
  type = number
  default = 1
}

variable "instance_tags" {
    type = map
    default = {
      "environment" = "dev"
    }
}
