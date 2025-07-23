module "account_request_02" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "sankalp.219302007@muj.manipal.edu"
    AccountName               = "AFT-workload-account"
    ManagedOrganizationalUnit = "Workload OU" 
    SSOUserEmail              = "somiljn02@gmail.com"
    SSOUserFirstName          = "Somil"
    SSOUserLastName           = "Jain"
  }

  account_tags = {
    "ABC:Owner"       = "celebal-technologies"
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
    change_reason       = "AFT-New Account Provisioning Demo"
  }

  custom_fields = {
    custom1 = "a"
    custom2 = "b"
  }

  account_customizations_name = "DEV"
}