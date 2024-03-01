variable "lambda_arn" {
    type=string
  
}
variable "tags" {
  type=map(string)
}
variable "sns_topic_name" {
 type =  string
}
variable "sub_protocol" {
  type=string
}