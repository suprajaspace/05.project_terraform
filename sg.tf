module "mysql_sg" {
    source = "../05.terraform_aws_security_group"
    project_name = var.project_name
    environment = var.environment
    sg_name = "mysql"
    vpc_id = module.vpc.vpc_id
    common_tags = var.common_tags
    sg_tags = var.mysql_sg_tags
}