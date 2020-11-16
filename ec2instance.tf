provider "aws" {
  region     = "us-west-2"
  access_key = "AKIA5V3RNY2DOOSVVEWQ"
  secret_key = "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"
}
resource "aws_instance" "my-instance" {
  count         = "${var.instance_count}"
  ami           = "${lookup(var.ami,var.aws_region)}"
  instance_type = "${var.instance_type}
