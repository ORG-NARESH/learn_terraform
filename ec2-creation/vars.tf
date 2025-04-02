variable "component" {
  default = {
    frontend = {

      instance_type          = "t3.micro"
      ami                    = "ami-0fcc78c828f981df2"
      vpc_security_group_ids = ["sg-02efeff1df99019a6"]
      zone_id                = "Z0135212GWRZC8NQ42PM"

    }
    mysql = {

      instance_type          = "t3.medium"
      ami                    = "ami-0fcc78c828f981df2"
      vpc_security_group_ids = ["sg-02efeff1df99019a6"]
      zone_id                = "Z0135212GWRZC8NQ42PM"
    }
    backend = {

      instance_type          = "t3.small"
      ami                    = "ami-0fcc78c828f981df2"
      vpc_security_group_ids = ["sg-02efeff1df99019a6"]
      zone_id                = "Z0135212GWRZC8NQ42PM"
    }

  }
}