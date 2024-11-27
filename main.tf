provider "google" {
  project = var.project_id
  region  = var.region
}

# Create a VPC network
module "network" {
  source       = "./modules/network"
  network_name = "nginx-webserver-network"
}

# Create the first instance
module "nginx_instance_1" {
  source          = "./modules/compute-instance"
  instance_name   = "nginx-instance-1"
  machine_type    = var.machine_type
  zone            = var.zone
  network         = module.network.network_name
  startup_script  = file("./modules/compute-instance/startup-script.sh")
}

# Create the second instance
module "nginx_instance_2" {
  source          = "./modules/compute-instance"
  instance_name   = "nginx-instance-2"
  machine_type    = var.machine_type
  zone            = var.zone
  network         = module.network.network_name
  startup_script  = file("./modules/compute-instance/startup-script.sh")
}

# Output the IP addresses of both instances
output "nginx_instance_1_ip" {
  description = "Public IP of the first Nginx instance"
  value       = module.nginx_instance_1.instance_ip
}

output "nginx_instance_2_ip" {
  description = "Public IP of the second Nginx instance"
  value       = module.nginx_instance_2.instance_ip
}
