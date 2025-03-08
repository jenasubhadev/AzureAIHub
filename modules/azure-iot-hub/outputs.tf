output "iot_hub_name" {
  description = "The name of the IoT Hub."
  value       = azurerm_iothub.iot_hub.name
}

output "iot_hub_id" {
  description = "The ID of the IoT Hub."
  value       = azurerm_iothub.iot_hub.id
}

output "iot_hub_hostname" {
  description = "The hostname of the IoT Hub."
  value       = azurerm_iothub.iot_hub.hostname
}