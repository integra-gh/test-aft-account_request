module "networking_account1" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail = "aws-test-ct-networking@integratech.ae"
    AccountName  = "NetworkingAccount"
    ManagedOrganizationalUnit = "Network"
    SSOUserEmail     = "aws-test-ct-mgmt@integratech.ae"
    SSOUserFirstName = "AWS Control Tower"
    SSOUserLastName  = "Admin"
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

account_customizations_name = "name"
}
