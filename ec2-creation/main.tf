resource "aws_instance" "main" {
  count = 3
  ami                     = "ami-0fcc78c828f981df2"
  instance_type           = "t3.micro"
  vpc_security_group_ids = ["sg-02efeff1df99019a6"]

   tags = {
    Name = var.component
  }
  
}
# resource "aws_instance" "expense-mysql" {
#   ami                     = "ami-0fcc78c828f981df2"
#   instance_type           = "t3.micro"
#   vpc_security_group_ids = ["sg-02efeff1df99019a6"]

#    tags = {
#     Name = "mysql-dev"
#   }
  
# }
# resource "aws_instance" "expense-backend" {
#   ami                     = "ami-0fcc78c828f981df2"
#   instance_type           = "t3.micro"
#   vpc_security_group_ids = ["sg-02efeff1df99019a6"]

#    tags = {
#     Name = "backend-dev"
#   }
  
# }

# resource "aws_route53_record" "mysql_record" {
#   zone_id = "Z0135212GWRZC8NQ42PM"
#   name    = "mysql-dev.eternallearnings.shop"
#   type    = "A"
#   ttl     = "10"
#   records = [aws_instance.expense-mysql.private_ip]
# }


# resource "aws_route53_record" "backend_record" {
#   zone_id = "Z0135212GWRZC8NQ42PM"
#   name    = "backend-dev.eternallearnings.shop"
#   type    = "A"
#   ttl     = "10"
#   records = [aws_instance.expense-backend.private_ip]
# }


# resource "aws_route53_record" "frontend_record" {
#   zone_id = "Z0135212GWRZC8NQ42PM"
#   name    = "frontend-dev.eternallearnings.shop"
#   type    = "A"
#   ttl     = "10"
#   records = [aws_instance.expense-frontend.public_ip]
# }