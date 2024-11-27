output "instance_ip" {
  description = "Public IP of the instance"
  value       = google_compute_instance.default.network_interface[0].access_config[0].nat_ip
}
