module "aws-dev" {
    source = "../../infra/"
    type_instance = "t2.micro"
    region_aws = "us-west-2"
    key = "IaC-DEV"
}

output "IP" {
    value = module.aws-dev.public_ip
}