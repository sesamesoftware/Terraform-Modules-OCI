output "autonomous_data_warehouse_wallet_password" {
  value = random_string.autonomous_data_warehouse_wallet_password.result
}
output "autonomous_data_warehouse_wallet_Location" {
  value = local_file.autonomous_data_warehouse_wallet_file.filename
}
output "ADW_URL" {
  description = "url to connect to"
  value       = var.adw_enabled ? oci_database_autonomous_database.test_autonomous_database.connection_urls : null
}