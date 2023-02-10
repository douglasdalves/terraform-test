# variable "POLICY_VARIABLES" {
#   type = map(string)
# }
variable "POLICY_SETTINGS" {
  #type = map(string)
}

resource "aws_iam_policy" "Support_Deny" {
  #name = "Support-denny-test"
  name = var.POLICY_SETTINGS["policy_name_denny"]

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
  #name = "Billing-test"
  name = var.POLICY_SETTINGS["policy_name_iam_billing"]

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


