module "aws-prod" {
    source = "../../infra/"
    type_instance = "t2.micro"
    region_aws = "us-west-2"
    key = "IaC-Prod"
    name_instance = "GabrielProd - Instance"
    name_security_group = "general_access_prod"
}

output "IP" {
  value = module.aws-prod.public_ip
}

