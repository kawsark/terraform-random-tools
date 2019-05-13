#!/bin/bash
export TF_VAR_len=19
terraform apply --auto-approve &> /dev/null
terraform output simpler_password | pbcopy
terraform destroy --auto-approve &> /dev/null
echo "simpler password copied"
