Quickly create an RStudio server on AWS using one of the great ami's from
Louis Aslett http://www.louisaslett.com/RStudio_AMI/  

Usage:
terraform plan -out=terraform.plan -var-file=variables.tfvars  
terraform apply terraform.plan  

Variables:  
local_ip - the local IP address to be given SSH access  
region - the aws region for the deployment  
instance_type - the type of instance to create. see: https://aws.amazon.com/ec2/instance-types/  
zone - the availability zone the server should be created in  
disk_size - the size of the EBS volume to provision  
keypair_name - the pre-created key pair name to use  
private_key - the private key to use to connect via ssh, i.e. the key from the key pair  
rstudio_password - the password to set for RStudio server  
