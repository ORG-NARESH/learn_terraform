variable "ami" {
    default = "ami-0fcc78c828f981df2"
}
variable "instance_type" {
    default = "t3.micro"
}
 
# variable "vpc_security_group_ids" {
#      type = list(string)
#     default = ["sg-02efeff1df99019a6"]
# }

variable "zone_id" {
    default = "Z0135212GWRZC8NQ42PM"
}

variable "domain" {
    default = "eternallearnings.shop"
}
