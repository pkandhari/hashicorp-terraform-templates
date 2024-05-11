module "app-server" {
  source = "../module/app-servers"
}

module "iam-user" {
  source = "../module/iam"
}

module "rds" {
  source = "../module/rds"
}