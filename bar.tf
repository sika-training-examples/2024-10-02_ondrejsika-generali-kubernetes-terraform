module "bar_project" {
  source = "git::https://gitlab.sikademo.com/generali/generali-terraform-modules.git//rancher_project?ref=master"

  name       = "bar"
  cluster_id = module.cluster_info.cluster_id
}
