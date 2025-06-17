variable "app_name" {}
variable "cluster_name" {}
variable "image_url" {}
variable "execution_role" {}
variable "subnet_ids" { type = list(string) }
variable "security_group_id" {}