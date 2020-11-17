provider "aws" {
  region     = "us-west-2"
  access_key = "UR key"
  secret_key = "ur KEY"
}
resource "aws_instance" "my-instance" {
  count         = "${var.instance_count}"
  ami           = "${lookup(var.ami,var.aws_region)}"
  instance_type = "${var.instance_type}
