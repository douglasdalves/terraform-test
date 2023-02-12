variable "iam_dados" {
  type = object({
    hml = object({
      group_name          = string
      policy_name_admin   = string
      policy_name_deny    = string
      policy_name_billing = string
      policy_name_denny = string
      policy_name_iam_billing = string
    })
    prd = object({
      group_name          = string
      policy_name_admin   = string
      policy_name_deny    = string
      policy_name_billing = string
      policy_name_denny = string
      policy_name_iam_billing = string
    })
  })

  default = {
    hml = {
      group_name          = "admin-testando"
      policy_name_admin   = "AdminAccess"
      policy_name_deny    = "SupportDeny-test"
      policy_name_billing = "BilDenyPolicy"
      policy_name_denny       = "Support-denny-test",
      policy_name_iam_billing = "Billing-test"
    }
    prd = {
      group_name          = "admin-testando1"
      policy_name_admin   = "AdminAccess1"
      policy_name_deny    = "SupportDeny-test1"
      policy_name_billing = "BilDenyPolicy1"
      policy_name_denny       = "Support-denny-test1",
      policy_name_iam_billing = "Billing-test1"
    }
  }
}

variable "env" {
  type        = string
}