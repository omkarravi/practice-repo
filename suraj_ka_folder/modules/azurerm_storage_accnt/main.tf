resource "azurerm_storage_account" "stg" {
    for_each = var.my_rg
    name = var.storage_account_name
    resource_group_name = var.my_rg.value.name
    location = var.my_rg.value.location
    account_replication_type = "LRS"
    account_tier = "Basic"
  
}