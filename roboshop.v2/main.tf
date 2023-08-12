variable "ami"{
  default = "ami-03265a0778a880afb"
}
variable "instance_type"{
  default = "t3.small"
}
variable "security_group"{
 default = ["sg-0a967863747834191"]
}

variable "zone_id" {
  default = "Z0068683HBGQ2JCBDNOY"
}

variable "components" {
  default = {
    frontend = {name="frontend-dev"}
    mongodb = {name="mongodb-dev"}
    catalogue= {name="catalogue-dev"}
    redis= {name="redis-dev"}
    user= {user="catalogue-dev"}
    cart= {name="cart-dev"}
    mysql= {name="mysql-dev"}
    shipping= {name="shipping-dev"}
    rabbitmq= {name="rabbitmq-dev"}
    payment= {name="payment-dev"}

  }

}
resource "aws_instance" "instance" {
  for_each = var.components
  ami           = var.ami
  instance_type = var.instance_type
  vpc_security_group_ids = var.security_group

  tags = {
    Name = lookup(each.value, "name",null)
  }
}
resource "aws_route53_record" "record" {
  for_each = var.components
  zone_id = var.zone_id
  name    = "${lookup(each.vaule, "name" null)}.ndevops.online"
  type    = "NS"
  ttl     =  30
  records = [lookup(lookup(aws_instance.instance, each.key, null), "private_ip", null)]
}

