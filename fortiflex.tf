# Configure the Provider for FortiFlexVM
provider "fortiflexvm" {
    username = var.username
    password = var.password
}
/*
#Flex Config - FGT ATP 2vCPUs
resource "fortiflexvm_config" "FGT_VM_Bundle_ATP"{
    product_type = "FGT_VM_Bundle"
    program_serial_number = var.Flex_Account
    name = "FGT_VM_Bundle - Terraform - 01"
    fgt_vm_bundle {
      cpu_size =  "2"
      service_pkg = "ATP"
    }
}

# Create one VM using the previous Configuration that was created
resource "fortiflexvm_vms_create" "FGTs_ATP_Customer1"{
    config_id = fortiflexvm_config.FGT_VM_Bundle_ATP.id
    description = "VM Created through Terraform"
    end_date = "2023-07-22 00:00:00"
    folder_path = "My Assets"
    vm_count = 1
}

# Printing the Config ID
output "FF_Output_id" {
        value = fortiflexvm_config.FGT_VM_Bundle_ATP.id
}

# Saving ConfigID as data to be used later
data "fortiflexvm_vms_list" "vms_token" {
  config_id = fortiflexvm_vms_create.FGTs_ATP_Customer1.config_id
}

# Getting all the tokens that were created (in this case, only token on position 0 in the list)
locals {
  FortiFlex_Tokens = {
    token_FGT_VM = (data.fortiflexvm_vms_list.vms_token.vms[0].token)
  }
}

# Printing the token to test it
output "testingTokenOut" {
  value = local.FortiFlex_Tokens.token_FGT_VM
}
*/
