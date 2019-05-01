#!/bin/bash
export TF_VAR_len=19
terraform apply --auto-approve &> /dev/null
terraform output password | pbcopy
terraform destroy --auto-approve &> /dev/null
echo "password copied"
cd -