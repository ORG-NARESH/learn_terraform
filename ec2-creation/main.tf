resource "aws_instance" "expense-frontend" {
  ami                     = "ami-0fcc78c828f981df2"
  instance_type           = "t3.micro"
  vpc_security_group_ids = ["sg-02efeff1df99019a6"]

   tags = {
    Name = "frontend-dev"
  }
  
}
resource "aws_instance" "expense-mysql" {
  ami                     = "ami-0fcc78c828f981df2"
  instance_type           = "t3.micro"
  vpc_security_group_ids = ["sg-02efeff1df99019a6"]

   tags = {
    Name = "mysql-dev"
  }
  
}
resource "aws_instance" "expense-backend" {
  ami                     = "ami-0fcc78c828f981df2"
  instance_type           = "t3.micro"
  vpc_security_group_ids = ["sg-02efeff1df99019a6"]

   tags = {
    Name = "backend-dev"
  }
  
}