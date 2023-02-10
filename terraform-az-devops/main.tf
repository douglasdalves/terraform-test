terraform {
  required_version = ">=1.2.2"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.17.1"
    }
    template = {
      source  = "hashicorp/template"
      version = "2.2.0"
    }
  }
}

provider "aws" {
  region  = var.aws_region
  profile = var.aws_profile
}

locals {
  now         = timestamp()
  brasilia_tz = timeadd(local.now, "-3h")
  date_br     = formatdate("DD/MM/YYYY", local.brasilia_tz)
}

locals {
  common_tags = {
    CreatedDate = local.brasilia_tz
  }
}

########################
## Chamada de Modulos ##
########################


module "grupo_admin" {
  source          = "../module-iam_group"
  POLICY_SETTINGS = var.modulo_iam_policy["settings"]
  GROUP_SETTINGS  = var.modulo_iam["settings"]
  #POLICY_VARIABLES = var.modulo_iam["variables"]
}