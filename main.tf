resource "azurerm_lb" "example" {
  name                = "my-load-balancer"
  resource_group_name = azurerm_resource_group.example.name
  location            = "West US"
  sku                 = "Standard"

  frontend_ip_configuration {
    name                 = "PublicIPAddress"
    public_ip_address_id = azurerm_public_ip.example.id
  }

  backend_address_pool {
    name = "my-backend-pool"
  }

  # Add additional configuration for load balancing rules, probes, etc.
}
