variable "env" {
  default = "dev"
}
variable "component" {
  default = {
    frontend = {
      Name                   = "frontend"
      instance_type          = "t3.micro"
      ami                    = "ami-0fcc78c828f981df2"
      vpc_security_group_ids = ["sg-02efeff1df99019a6"]
    }
    mysql = {
      Name                   = "mysql"
      instance_type          = "t3.medium"
      ami                    = "ami-0fcc78c828f981df2"
      vpc_security_group_ids = ["sg-02efeff1df99019a6"]
    }
    backend = {
      Name          = "backend"
      instance_type = "t3.small"
      ami           = "ami-0fcc78c828f981df2"
    }



  }
}