variable "REGION" {
  default = "us-east-1"
}

variable "ZONE1" {
  default = "us-east-1a"
}

variable "AMIS" {
  type = map
  default = {
    us-east-2 = "ami-0e820afa569e84cc1"
    us-east-1 = "ami-022e1a32d3f742bd8"
  }
}