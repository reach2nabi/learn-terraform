module "components" {
  for_each        = var.components
  source          = "./module"
  security_group  = var.security_group
  zone_id         = var.zone_id
  instance_type   = each.value["instance_type"]
  name            = each.value["name"]


}

