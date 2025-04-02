resource "aws_instance" "main_instance" {
  for_each               = var.component
  ami                    = each.value["ami"]
  instance_type          = each.value["instance_type"]
  vpc_security_group_ids = each.value["vpc_security_group_ids"]

  tags = {
    Name = "${each.key}-${var.env}"
  }
}


resource "aws_route53_record" "main_dns" {
  for_each = var.component
  zone_id  = each.value["zone_id"]
  name     = "${each.key}-${var.env}.eternallearnings.shop"
  type     = "A"
  ttl      = "10"
  records  = [aws_instance.main_instance.private_ip]
}


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