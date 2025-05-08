output "public_ip" {
  description = "Public IP address of the Virtual Machine"
  value       = azurerm_public_ip.example.ip_address 
}

