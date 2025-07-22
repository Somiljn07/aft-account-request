module "account_request_01" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "kabeer.219302036@muj.manipal.edu"
    AccountName               = "newaccount"
    ManagedOrganizationalUnit = "Infrastructure OU"
    SSOUserEmail              = "praveen.jha@celebaltech.com"
    SSOUserFirstName          = "praveen"
    SSOUserLastName           = "jha"
  }

  account_tags = {
    "ABC:Owner"       = "dhruv.dalsania@celebaltech.com"
    "ABC:Division"    = "ENT"
    "ABC:Environment" = "Dev"
    "ABC:CostCenter"  = "123456"
    "ABC:Vended"      = "true"
    "ABC:DivCode"     = "102"
    "ABC:BUCode"      = "ABC003"
    "ABC:Project"     = "123456"
  }

  change_management_parameters = {
    change_requested_by = "Somil Jain"
    change_reason       = "Update existing account"
  }

  custom_fields = {
    custom1 = "a"
    custom2 = "b"
  }

  account_customizations_name = "SANDBOX"
}