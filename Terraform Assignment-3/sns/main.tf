resource "aws_sns_topic" "sns-topic" {
  name = var.sns_topic_name
  tags = var.tags
}
resource "aws_sns_topic_subscription" "lambda_subscription" {
  topic_arn = aws_sns_topic.sns-topic.arn
  protocol  = var.sub_protocol
  endpoint  = var.lambda_arn
}