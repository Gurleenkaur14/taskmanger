output "public_ip_address" {
  description = "Public IP address of the Virtual Machine"
  value       = azurerm_public_ip.pip-veer.ip_address 
}

