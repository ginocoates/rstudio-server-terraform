# define the local IP to map to the SSH security rule
variable "local_ip" {
  type = "string"
}

# pass the region as a variable so we can provide it in a tfvars file
variable "region" {
  type = "string"
}

# define the region specific rstudio images
variable "images" {
  type = "map"

  default = {
    "eu-west-1"      = "ami-b1b0c3c2"
    "eu-central-1"   = "ami-ca46b6a5"
    "us-east-1"      = "ami-8fe18f98"
    "us-west-1"      = "ami-c0b8f5a0"
    "us-west-2"      = "ami-6a52840a"
    "sa-east-1"      = "ami-55079639"
    "ap-southeast-1" = "ami-ce9c47ad"
    "ap-northeast-1" = "ami-1f79b17e"
    "ap-northeast-2" = "ami-41f4212f"
    "ap-southeast-2" = "ami-b9093fda"
  }
}

variable "instance_type" {
  type    = "string"
  default = "t2.micro"
}

variable "zone" {
  type = "string"
}

variable "keypair_name" {
  type = "string"
}

variable "private_key" {
  type = "string"
}

variable "rstudio_password" {
  type = "string"
}
