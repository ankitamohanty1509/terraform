variable "aws_region" {
  description = "AWS region to deploy the infrastructure"
  type        = string
}

variable "db_username" {
  description = "Username for the MySQL database"
  type        = string
}

variable "db_password" {
  description = "Password for the MySQL database"
  type        = string
  sensitive   = true
}

variable "db_name" {
  description = "Name of the MySQL database"
  type        = string
}
