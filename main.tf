module "MyThreeTierApp" {
  source         = ".//Modules//threetier" # using locally created three tier app module
  privatekeypath = var.aws_privatekeypath
  access_key     = var.aws_access_key
  secret_key     = var.aws_secret_key

}


module "s3_backend1" {
  source                      = "youngfeldt/backend-s3/aws"
  version                     = ">= 1.0.0"
  backend_s3_bucket           = "s3-terraform"
  backend_dynamodb_lock_table = "multiclouddb-sandydb"
  create_dynamodb_lock_table  = true
  create_s3_bucket            = true
  s3_key                      = "multicloudsandys3.state"

}



module "web_server_sg" {
  source              = "terraform-aws-modules/security-group/aws//modules/http-80" # using from T/F module registry
  name                = "web-server"
  description         = "Security group for web-server with HTTP ports open within VPC"
  vpc_id              = "vpc-94db29ff"
  ingress_cidr_blocks = ["0.0.0.0/0"]

}





