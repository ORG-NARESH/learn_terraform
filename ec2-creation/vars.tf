variable "env" {
  default = "dev"
}
variable "component" {
  default = {

    frontend = {
        Name =  "frontend"
    }
    mysql = {
        Name = "mysql"
    }
      backend = {
        Name = "backend"
    }
  
   }
}