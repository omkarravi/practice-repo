terraform   {
    required_version = ">= 1.0.0"
    required_providers {
        
        azurerm = {
            source  = "hashicorp/azurerm"
            version = "~> 3.0"
        }
        

    }

    backend "azurerm" {
        resource_group_name  = "backend-rg"
        storage_account_name = "tfstateeestorageaccount"
        container_name       = "tfstatecontainer"
        key                  = "terraform.tfstate"
      
    }
}

provider "azurerm" {
    features {}
    subscription_id = "f4a74092-065d-4b65-ac13-13a156a06eb6"
  
}
