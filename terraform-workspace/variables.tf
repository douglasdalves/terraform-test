
variable "registro" {
  type        = map(string)
  description = "Tags do terraform para contas."

  default = {
    "Owner"     = "Cloud-test"
    "project"   = "lab-stage"
    "ManagedBy" = "Terraform"
  }
}

variable "dados_modulo_iam" {
  type = object({
    hml = object({
      group_name              = string
      policy_name_admin       = string
      policy_name_deny        = string
      policy_name_billing     = string
      policy_name_denny       = string
      policy_name_iam_billing = string
    })
    prd = object({
      group_name              = string
      policy_name_admin       = string
      policy_name_deny        = string
      policy_name_billing     = string
      policy_name_denny       = string
      policy_name_iam_billing = string
    })
  })

  default = {
    hml = {
      group_name              = "admin-testando"
      policy_name_admin       = "AdminAccess"
      policy_name_deny        = "SupportDeny-test"
      policy_name_billing     = "BilDenyPolicy"
      policy_name_denny       = "Support-denny-test",
      policy_name_iam_billing = "Billing-test"
    }
    prd = {
      group_name              = "admin-testando1"
      policy_name_admin       = "AdminAccess1"
      policy_name_deny        = "SupportDeny-test1"
      policy_name_billing     = "BilDenyPolicy1"
      policy_name_denny       = "Support-denny-test1",
      policy_name_iam_billing = "Billing-test1"
    }
  }
}

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
  description = "Digite o nome do ambiente que deseja executar o terraform (hml, dev, qa, stg ou prd)"
}


#https://medium.com/digitalproductsdev/organizando-sua-infraestrutura-como-c%C3%B3digo-com-terraform-df6ca70d8eb



#terraform destroy -auto-approve -var-file="env\hml.tfvars"
#terraform destroy -auto-approve -var-file="env\prd.tfvars"

#terraform workspace list = hml e prd

#https://developer.hashicorp.com/terraform/language/settings/backends/remote