variable "person_name" {
  description = "Euphoric person that can take this test :)"
  type        = string
  default     = "rafael"
}

variable "rg_name" {
  description = "Nome do resource group"
  type        = string
}

variable "location" {
  description = "Azure location that deploy resources"
  type        = string
  default     = "eastus"
}

variable "db_username" {
  description = "Database administrator username"
  type        = string
  default     = "dbadmin"
}

variable "db_password" {
  description = "Database administrator password"
  type        = string
  sensitive   = true
}
