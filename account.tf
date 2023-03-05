module "networking_account" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail = "aws-test-ct-networking"
    AccountName  = "Networking"
    ManagedOrganizationalUnit = "Network"
    SSOUserEmail     = "aws-test-ct-mgmt@integratech.ae"
    SSOUserFirstName = "aws-test-ct"
    SSOUserLastName  = "mgmt"
  }

  account_tags = {
    "ABC:Owner"       = "josukutty"
  }

  change_management_parameters = {
    change_requested_by = "josukutty"
    change_reason       = "testing the account vending process2"
  }

  custom_fields = {
    custom1 = "a"
    custom2 = "b"
  }

  a
ccount_customizations_name = "name"
}
