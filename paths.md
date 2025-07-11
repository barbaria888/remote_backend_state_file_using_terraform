## create main.tf to store on local storage
-terraform init 
-terraform apply
-terraform show 
    -shows the state file
## make changes to the main.tf to store on google storage bucket
-terraform init -migrate-state  
    -terraform changes the infra according to current main.tf file
-terraform refresh
## delete the bucket and revert back to local
-terraform init -migrate-state
-terraform apply
-terraform destroy