variable "aws_access_key" {}
variable "aws_secret_key" {}
variable "aws_region" {
    default = "ap-northeast-1"
}

provider "aws" {
    access_key = "${var.aws_access_key}"
    secret_key = "${var.aws_secret_key}"
    region     = "${var.aws_region}"
}

resource "aws_instance" "web_server" {
    ami           = "ami-f80e0596"
    instance_type = "t2.micro"
    monitoring    = true
    tags {
        Name = "web_server"
    }
}
