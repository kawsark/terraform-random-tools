#!/bin/bash
export TF_VAR_len=19
terraform apply --auto-approve &> /dev/null
terraform output alnum_password | pbcopy
terraform destroy --auto-approve &> /dev/null
echo "Alphanumeric password copied"
