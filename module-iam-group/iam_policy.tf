resource "aws_iam_policy" "Support_Deny" {
  name = lookup(var.iam_dados, var.env)["policy_name_deny"]

  policy = <<EOF
{
  "Version" : "2012-10-17",
    "Statement" : [
      {
        "Action" : [
          "Support:*"
        ],
        "Resource" : "*",
        "Effect" : "Deny"
      }
    ]
}
EOF
}


resource "aws_iam_policy" "Policy_Billing" {
  name = lookup(var.iam_dados, var.env)["policy_name_billing"]

  policy = <<EOF
{
  "Version" : "2012-10-17",
    "Statement" : [
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
}
EOF
}


