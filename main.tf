data "aws_sns_topic" "topic" {
  name = var.sns-topic
}

resource "aws_cloudwatch_metric_alarm" "alarm" {
  alarm_name = "${var.name} lambda"
  comparison_operator = "GreaterThanThreshold"
  threshold = 0
  metric_name = "Errors"
  namespace = "AWS/Lambda"
  statistic = "SampleCount"
  dimensions = {
    FunctionName = var.name
  }
  period = var.period
  evaluation_periods = var.evaluation_periods
  datapoints_to_alarm = var.datapoints_to_alarm

  alarm_actions = [data.aws_sns_topic.topic.arn]

  tags = var.tags
}