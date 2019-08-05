variable "name" {
  description = "Name of the lambda function to track."
}

variable "sns-topic" {
  description = "Name of the alarm."
}

variable "tags" {
  type = "map"
  default = {}
}

variable "enabled" {
  default = true
}

variable "period" {
  default = 60
  description = "The period in seconds over which the specified statistic is applied."
}

variable "evaluation_periods" {
  default = 1
  description = "The number of periods over which data is compared to the specified threshold."
}

variable "datapoints_to_alarm" {
  default = 1
  description = "The number of datapoints that must be breaching to trigger the alarm."
}