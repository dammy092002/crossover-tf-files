resource "aws_instance" "web" {
  ami = "ami-0c2d06d50ce30b442"
  instance_type = "t2.micro"
  key_name = "zox"
  security_groups = ["launch-wizard-1", "default"]
  user_data = "${file("${var.USER_DATA_FOR_WEBSERVER}")}"
  tags = {
    Name = "Web_Server"
  }
}
