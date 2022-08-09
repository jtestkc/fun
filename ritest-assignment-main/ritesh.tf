module "vpc" {
  source = "../ritesh-vpc"
}
module "alb" {
  source     = "../ritesh-asg"
  subnet_ids = [module.vpc.public_subnet_1, module.vpc.public_subnet_2]
  depends_on = [
    module.vpc
  ]
}
module "waf" {
  source     = "../ritesh-waf"
   name  = "cloudfront-web-acl"
  scope = "CLOUDFRONT"
}
