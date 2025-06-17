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
  image_url          = "144317819575.dkr.ecr.us-east-1.amazonaws.com/appointment_ecr"
  execution_role     = module.iam.execution_role_arn
  subnet_ids         = ["subnet-08c0bca341b42e03b", "subnet-0431e51cc9cb6409c"]
  security_group_id  = "sg-0e0a91c556b78754d"
}