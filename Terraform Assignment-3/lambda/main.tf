resource "aws_lambda_function" "lambda1" {
  function_name = var.fun_name
  handler = "lambda.lambda_handler"
  runtime = var.runtime
  role = var.lambda_role_arn
  filename = "${path.module}/../python/lambda.zip"
  tags = var.tags
}
  resource "aws_lambda_permission" "sns_invoke_lambda" { 
  statement_id  = var.stmt_id
  action        = var.lambda-action
  function_name = aws_lambda_function.lambda1.function_name
  principal     = var.principal
  source_arn = var.sns_arn
}


 data "archive_file" "zip_file" {
  type        = var.type-datasource
  output_path = "${path.module}/../python/lambda.zip"
  source_dir  = "${path.module}/../python"
}

