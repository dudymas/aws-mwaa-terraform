# MWAA input variables

variable "region" {
  type        = string
  description = "AWS region where resources will be deployed."
}

variable "prefix" {
  type        = string
  description = "A prefix to use when naming resources."
}

variable "mwaa_max_workers" {
  type        = number
  description = "Maximum number of MWAA workers."
  default     = 2
}
