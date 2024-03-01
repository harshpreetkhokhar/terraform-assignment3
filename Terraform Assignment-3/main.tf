module "iam" {
  source = "./iam"
  tags = var.tags
  iam-role_name = var.iam-role_name
  iam_policy-name = var.iam_policy-name
}


module "sns" {
  source = "./sns"
  lambda_arn = module.lambda.lambda_function_arn
  tags=var.tags
  sns_topic_name = var.sns_topic_name
  sub_protocol = var.sub_protocol


}

module "lambda" {
  source = "./lambda"
  lambda_role_arn = module.iam.iam_role_arn
  sns_arn=module.sns.sns_topic_arn
  tags=var.tags
  type-datasource = var.type-datasource
  principal = var.principal
  stmt_id = var.stmt_id
  lambda-action = var.lambda-action
  runtime = var.runtime
fun_name = var.fun_name
}