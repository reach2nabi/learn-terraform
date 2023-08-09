resource "aws_instance" "frontend" {
  ami           = "ami-03265a0778a880afb"
  instance_type = "t3.small"
  pc_security_group_ids = ["sg-0a967863747834191"]
  }
resource "aws_route53_record" "frontend" {
  zone_id = Z0068683HBGQ2JCBDNOY
  name    = "frontend-dev.ndevops.online"
  type    = "NS"
  ttl     = "30"
  records = [aws_instance.frontend.private_ip]
}

resource "aws_instance" "mongodb" {
  ami           = "ami-03265a0778a880afb"
  instance_type = "t3.small"
  pc_security_group_ids = ["sg-0a967863747834191"]

  }
resource "aws_route53_record" "mongodb" {
  zone_id = Z0068683HBGQ2JCBDNOY
  name    = "mongodb-dev.ndevops.online"
  type    = "NS"
  ttl     = "30"
  records = [aws_instance.mongodb.private_ip]
}

resource "aws_instance" "catalogue" {
  ami           = "ami-03265a0778a880afb"
  instance_type = "t3.small"
  pc_security_group_ids = ["sg-0a967863747834191"]

  }
resource "aws_route53_record" "catalogue" {
  zone_id = Z0068683HBGQ2JCBDNOY
  name    = "catalogue-dev.ndevops.online"
  type    = "NS"
  ttl     = "30"
  records = [aws_instance.catalogue.private_ip]
}

resource "aws_instance" "redis" {
  ami           = "ami-03265a0778a880afb"
  instance_type = "t3.small"
  pc_security_group_ids = ["sg-0a967863747834191"]

}
resource "aws_route53_record" "redis" {
  zone_id = Z0068683HBGQ2JCBDNOY
  name    = "redis-dev.ndevops.online"
  type    = "NS"
  ttl     = "30"
  records = [aws_instance.redis.private_ip]
}

resource "aws_instance" "user" {
  ami           = "ami-03265a0778a880afb"
  instance_type = "t3.small"
  pc_security_group_ids = ["sg-0a967863747834191"]

}
resource "aws_route53_record" "user" {
  zone_id = Z0068683HBGQ2JCBDNOY
  name    = "user-dev.ndevops.online"
  type    = "NS"
  ttl     = "30"
  records = [aws_instance.user.private_ip]
}

resource "aws_instance" "cart" {
  ami           = "ami-03265a0778a880afb"
  instance_type = "t3.small"
  pc_security_group_ids = ["sg-0a967863747834191"]


}
resource "aws_route53_record" "cart" {
  zone_id = Z0068683HBGQ2JCBDNOY
  name    = "cart-dev.ndevops.online"
  type    = "NS"
  ttl     = "30"
  records = [aws_instance.cart.private_ip]
}

resource "aws_instance" "mysql" {
  ami           = "ami-03265a0778a880afb"
  instance_type = "t3.small"
  pc_security_group_ids = ["sg-0a967863747834191"]

}
resource "aws_route53_record" "mysql" {
  zone_id = Z0068683HBGQ2JCBDNOY
  name    = "mysql-dev.ndevops.online"
  type    = "NS"
  ttl     = "30"
  records = [aws_instance.mysql.private_ip]
}

resource "aws_instance" "shipping" {
  ami           = "ami-03265a0778a880afb"
  instance_type = "t3.small"
  pc_security_group_ids = ["sg-0a967863747834191"]

}
resource "aws_route53_record" "shipping" {
  zone_id = Z0068683HBGQ2JCBDNOY
  name    = "shipping-dev.ndevops.online"
  type    = "NS"
  ttl     = "30"
  records = [aws_instance.shipping.private_ip]
}

resource "aws_instance" "rabbitmq" {
  ami           = "ami-03265a0778a880afb"
  instance_type = "t3.small"
  pc_security_group_ids = ["sg-0a967863747834191"]

}
resource "aws_route53_record" "rabbitmq" {
  zone_id = Z0068683HBGQ2JCBDNOY
  name    = "rabbitmq-dev.ndevops.online"
  type    = "NS"
  ttl     = "30"
  records = [aws_instance.rabbitmq.private_ip]
}

resource "aws_instance" "payment" {
  ami           = "ami-03265a0778a880afb"
  instance_type = "t3.small"
  pc_security_group_ids = ["sg-0a967863747834191"]

}
resource "aws_route53_record" "payment" {
  zone_id = Z0068683HBGQ2JCBDNOY
  name    = "payment-dev.ndevops.online"
  type    = "NS"
  ttl     = "30"
  records = [aws_instance.payment.private_ip]
}