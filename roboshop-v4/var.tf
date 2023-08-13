variable "security_group" {
  default = ["sg-0a967863747834191"]
}
variable "zone_id" {
  default = "Z0068683HBGQ2JCBDNOY"
}

variable "components" {
  default = {
    frontend= {
      name="frontend"
      instance_type="t3.micro"
    }
    mongodb={
      name="mongodb"
      instance_type="t3.micro"
    }
    catalogue= {
      name="catalogue-dev"
      instance_type="t3.micro"
    }
    redis= {
      name="redis-dev"
      instance_type="t3.micro"
    }
    user= {
      name="user-dev"
      instance_type="t3.micro"
    }
    cart= {
      name="cart-dev"
      instance_type="t3.micro"
    }
    mysql= {
      name="mysql-dev"
      instance_type="t3.micro"
    }
    shipping= {
      name="shipping-dev"
      instance_type="t3.micro"
    }
    rabbitmq= {
      name="rabbitmq-dev"
      instance_type="t3.micro"
    }
    payment= {
      name="payment-dev"
      instance_type="t3.micro"
    }
  }
}