terra-amazon-infra/env/Dev/variable.tf

module "storage" {
  source          = "../../child/storage_account"
  storage_account = var.storage_account
}