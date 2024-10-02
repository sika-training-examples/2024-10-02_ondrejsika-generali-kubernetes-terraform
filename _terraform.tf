terraform {
  backend "pg" {
    schema_name = "ondrejsika_kubernetes"
  }

  required_providers {
    harbor = {
      source  = "goharbor/harbor"
      version = "3.10.8"
    }
    null = {
      source  = "hashicorp/null"
      version = "3.2.2"
    }
    rancher2 = {
      source  = "rancher/rancher2"
      version = "4.0.0"
    }
    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = "2.25.2"
    }
    random = {
      source  = "hashicorp/random"
      version = "3.6.0"
    }
  }
}
