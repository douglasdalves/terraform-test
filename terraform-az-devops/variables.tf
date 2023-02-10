
variable "registro" {
  type        = map(string)
  description = "Tags do terraform para contas."

  default = {
    "Owner"     = "Cloud-test"
    "project"   = "lab-stage"
    "ManagedBy" = "Terraform"
  }
}

variable "modulo_iam" {
  type = map(string)
  default = {
    group_name          = "admin-testando",
    policy_name_admin   = "AdminAccess",
    policy_name_deny    = "SupportDeny-test",
    policy_name_billing = "BilDenyPolicy"
  }
}


variable "modulo_iam_policy" {
  type = map(string)
  default = {
    policy_name_denny       = "Support-denny-test",
    policy_name_iam_billing = "Billing-test"
  }
}

#-----------------------------------------------------
variable "aws_profile" {
  type        = string
  description = "Informar o profile configurado no aws cli"
  default     = "lab-terraform2"
}

variable "aws_region" {
  type        = string
  description = "Preecha a região a ser usada."
  default     = "us-east-1"
}

#https://medium.com/digitalproductsdev/organizando-sua-infraestrutura-como-c%C3%B3digo-com-terraform-df6ca70d8eb