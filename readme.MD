# Overview
Terraform to manage address objects in Strata Cloud Managed Prisma Access.

## Disclaimer

This project is provided as-is, without warranty of any kind, express or implied. No support, maintenance, bug fixes, or updates are offered or implied.
By using this software, you agree that:

* You assume all risk and liability arising from its use
* The author(s) are not responsible for any damages, data loss, system failures, or other consequences resulting from use or misuse of this code
* No support requests, issues, or pull requests will be acknowledged or addressed

Use at your own discretion.

## Requirements

| Package   | Version |
|-----------|---------|
| terraform | 1.14.7  |

Note: This project has yet to be tested on OpenTofu.

To install Terraform, use the following link: https://developer.hashicorp.com/terraform/tutorials/aws-get-started/install-cli.

## Preparing to run
* Clone this repo
* Authentication will be passed via environmental variables:
  *  export SCM_SCOPE='tsg_id:{{ tsg_id }}'
  *  export SCM_CLIENT_SECRET='{{ client_secret }}'
  *  export SCM_CLIENT_ID='{{ client_id }}'
* Run `terraform init`.

## Passing variables via a file
* Create a `terraform.tfvars` file.
  * `terraform.tfvars.example` is an example of the expected address group format.
* Run `terraform plan`.
* If you are happy with the output run `terraform apply`.
