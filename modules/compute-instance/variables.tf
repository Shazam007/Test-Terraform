variable "instance_name" {
  description = "Name of the compute instance"
}

variable "machine_type" {
  description = "Machine type of the compute instance"
}

variable "zone" {
  description = "Zone where the compute instance is deployed"
}

variable "network" {
  description = "VPC network to associate with the instance"
}

variable "startup_script" {
  description = "Startup script for the compute instance"
}
