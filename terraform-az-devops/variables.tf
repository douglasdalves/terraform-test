
variable "registro" {
  type        = map(string)
  description = "Tags do terraform para contas."

  default = {
    "Owner"     = "Cloud-test"
    "project"   = "lab-stage"
    "ManagedBy" = "Terraform"
  }
}

# variable "modulo_iam" {
#   type = map(string)
#   default = {
#     group_name          = "admin-testando",
#     policy_name_admin   = "AdminAccess",
#     policy_name_deny    = "SupportDeny-test",
#     policy_name_billing = "BilDenyPolicy"
#   }
# }

#-----------------------------------------------------
variable "aws_profile" {
  type        = string
  description = "Informar o profile configurado no aws cli"
}

variable "aws_region" {
  type        = string
  description = "Preecha a região a ser usada."
}

variable "enviroment" {
  type        = string
  description = "Digite o nome do ambiente que deseja executar o terraform (hml, dev, qa, stg ou prod)"
}


#https://medium.com/digitalproductsdev/organizando-sua-infraestrutura-como-c%C3%B3digo-com-terraform-df6ca70d8eb