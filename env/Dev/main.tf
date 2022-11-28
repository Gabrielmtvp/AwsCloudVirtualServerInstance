module "aws-dev" {
    source = "../../infra/"
    type_instance = "t2.micro"
    region_aws = "us-west-2"
    key = "IaC-DEV"
    name_instance = "GabrielDev - Instance"
    name_security_group = "general_access_dev"
}

output "IP" {
    value = module.aws-dev.public_ip
}