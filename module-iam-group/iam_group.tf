## ----------------------------------------------------------##
## Grupo e policy
## ----------------------------------------------------------##

resource "aws_iam_group" "group" {
  name = lookup(var.iam_dados, var.env)["group_name"]
}

resource "aws_iam_group_policy" "policy_admin" {
  name  = lookup(var.iam_dados, var.env)["policy_name_admin"]
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
  name  = lookup(var.iam_dados, var.env)["policy_name_denny"]
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
  name  = lookup(var.iam_dados, var.env)["policy_name_iam_billing"]
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
