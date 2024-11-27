variable "project_id" {
  description = "Google Cloud project ID"
  type        = string
}

variable "region" {
  description = "Google Cloud region"
  default     = "europe-north1"
}

variable "zone" {
  description = "Google Cloud region"
  default     = "europe-north1-a"
}

variable "machine_type" {
  description = "Type of the VM"
  default     = "e2-medium"
}



