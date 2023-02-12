## ----------------------------------------------------------##
## Grupo e policy
## ----------------------------------------------------------##

# variable "GROUP_VARIABLES" {
#   type = map(string)
# }
variable "GROUP_SETTINGS" {
  #type = map(string)
}

resource "aws_iam_group" "group" {
  #name = "admin-testando"
  name = var.GROUP_SETTINGS["group_name"]
}

resource "aws_iam_group_policy" "policy_admin" {
  #name  = "AdminAccess"
  name  = var.GROUP_SETTINGS["policy_name_admin"]
  group = aws_iam_group.group.name

  policy = jsonencode({
    Version : "2012-10-17",
    Statement : [
      {
        Effect : "Allow",
        Action : "*",
        Resource : "*"
      }
    ]
  })
}


resource "aws_iam_group_policy" "Support_Deny" {
  #name  = "SupportDeny-test"
  name  = var.GROUP_SETTINGS["policy_name_deny"]
  group = aws_iam_group.group.name

  policy = jsonencode({
    Version : "2012-10-17",
    Statement : [
      {
        "Action" : [
          "Support:*"
        ],
        "Resource" : "*",
        "Effect" : "Deny"
      }
    ]
  })
}

resource "aws_iam_group_policy" "Policy_Billing" {
  #name  = "BilDenyPolicy"
  name  = var.GROUP_SETTINGS["policy_name_billing"]
  group = aws_iam_group.group.name

  policy = jsonencode({
    Version : "2012-10-17",
    Statement : [
      {
        "Action" : [
          "ce:*",
          "aws-portal:*",
          "organizations:*",
          "Support:*",
          "pricing:*",
          "budgets:*",
          "cur:*"
        ],
        "Resource" : "*",
        "Effect" : "Deny"
      }
    ]
  })
}

## ----------------------------------------------------------##
## 
## ----------------------------------------------------------##
