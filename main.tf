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
  image_url          = "971422676158.dkr.ecr.ap-south-1.amazonaws.com/image-processor"
  execution_role     = module.iam.execution_role_arn
  subnet_ids         = ["subnet-06840c0b462dd7761", "subnet-04e67c2fc8ef67737"]
  security_group_id  = "sg-00c84b0e943662621"
}