module "ecr" {
  source    = "./modules/ecr"
  repo_name = "myapp-repo"
  tags      = { Env = "dev" }
}

module "iam" {
  source = "./modules/iam"
}

module "ecs" {
  source             = "./modules/ecs"
  app_name           = "myapp"
  cluster_name       = "myapp-cluster"
  image_url          = "921666318654.dkr.ecr.us-east-1.amazonaws.com/myapp-repo"
  execution_role     = module.iam.execution_role_arn
  subnet_ids         = ["subnet-0f2bab7ec574c5b1b", "subnet-01b627d11039e9c94"]
  security_group_id  = "sg-039934fef95c7b06a"
}