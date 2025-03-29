resource "aws_instance" "expense-frontend" {
  ami                     = "ami-0fcc78c828f981df2"
  instance_type           = "t3.micro"
  vpc_security_group_ids = ["sg-02efeff1df99019a6"]
  
}