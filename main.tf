module "cluster_info" {
  source       = "git::https://gitlab.sikademo.com/generali/generali-terraform-modules.git//cluster_info?ref=master"
  cluster_name = "local"
}

module "foo_project" {
  source = "git::https://gitlab.sikademo.com/generali/generali-terraform-modules.git//rancher_project?ref=master"

  name       = "foo"
  cluster_id = module.cluster_info.cluster_id
}

module "bar_project" {
  source = "git::https://gitlab.sikademo.com/generali/generali-terraform-modules.git//rancher_project?ref=master"

  name       = "foo"
  cluster_id = module.cluster_info.cluster_id
}
