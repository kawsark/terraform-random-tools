#!/bin/bash
export TF_VAR_min=1
export TF_VAR_max=9999

terraform apply --auto-approve &> /dev/null
terraform output pin | pbcopy
terraform destroy --auto-approve &> /dev/null
echo "4 digit pin copied"
