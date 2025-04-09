module "frontend"{
    source = "git::https://github.com/ORG-NARESH/org-modules-EC2-R53.git"
    ami = var.ami
    env = "dev" 
    vpc_security_group_ids = var.vpc_security_group_ids
    Name = "frontend"
    zone_id = var.zone_id
    domain = var.domain
    instance_type = var.instance_type

}
module "mysql"{
    source = "git::https://github.com/ORG-NARESH/org-modules-EC2-R53.git"
    ami = var.ami
    env = "dev" 
    vpc_security_group_ids = var.vpc_security_group_ids
    Name = "mysql"
    zone_id = var.zone_id
    domain = var.domain
    instance_type = var.instance_type

}
module "backend"{
    source = "git::https://github.com/ORG-NARESH/org-modules-EC2-R53.git"
    ami = var.ami
    env = "dev" 
    vpc_security_group_ids = var.vpc_security_group_ids
    Name = "backend"
    zone_id = var.zone_id
    domain = var.domain
    instance_type = var.instance_type

}
