# terraform-random-tools
Generate random strings using terraform

Some utilities to generate PIN and Passwords using terraform random provider. 

### Terraform steps:
- Run `terraform init` in cloned repo directory (this only needs to be done once)
- Optionally set min, max and length:
```
export TF_VAR_len=19
export TF_VAR_min=1
export TF_VAR_max=9999
```
- Run terraform plan and apply
```
terraform plan
terraform apply --auto-approve
terraform output pin
terraform output password
```
Use `terraform destroy` command and re-apply to generate new values

### Using a script:
- Execute `./pin.sh` to feed pin into clipboard (requires `pbcopy` utility)
- Execute `./pw.sh` to feed password into clipboard (requires `pbcopy` utility)