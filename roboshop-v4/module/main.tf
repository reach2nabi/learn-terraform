resource "aws_instance" "instance" {
  ami                     = data.aws_ami_ami_id
  instance_type           = var.instance_type
  vpc_security_group_ids  = var.security_group

  tags = {
    Name = var.name
  }
}
resource "aws_route53_record" "records" {
  zone_id = var.zone_id
  name    = "${var.name}.ndevops.online"
  type    = "A"
  ttl     =  30
  records = [aws_instance.instance.private_ip]
}

resource "null_resource" "ansible" {
  depends_on = [aws_route53_record.records]

  provisioner "local-exec" {
  provisioner= <<EOF
  cd /home/centos/roboshop-ansible-roles
  git pull
  ansible-playbook -i ${var.name}.ndevops.online main.yml -e centos_user=centos -e centos_password=DevOps321 components=${var.name}
EOF
  }
}