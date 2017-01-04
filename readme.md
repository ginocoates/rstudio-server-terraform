Quickly create an RStudio server on AWS using one of the great ami's from
Louis Aslett http://www.louisaslett.com/RStudio_AMI/

Usage:
terraform plan -out=terraform.plan -var-file=variables.tfvars
terraform apply terraform.plan

Variables:
local_ip             the local IP address to be given SSH access  
region               the aws region for the deployment  
instance_type        the type of instance to create one of:  
                      "t2.nano",  
                      "t2.micro",  
                      "t2.small",  
                      "t2.medium",  
                      "t2.large",  
                      "t2.xlarge",  
                      "t2.2xlarge",  
                      "m4.large",  
                      "m4.xlarge",  
                      "m4.2xlarge",  
                      "m4.4xlarge",  
                      "m4.10xlarge",  
                      "m4.16xlarge",  
                      "m3.medium",  
                      "m3.large",  
                      "m3.xlarge",  
                      "m3.2xlarge",  
                      "c4.large",  
                      "c4.xlarge",  
                      "c4.2xlarge",  
                      "c4.4xlarge",  
                      "c4.8xlarge",  
                      "c3.large",  
                      "c3.xlarge",  
                      "c3.2xlarge",  
                      "c3.4xlarge",  
                      "c3.8xlarge",  
                      "x1.32xlarge",  
                      "x1.16xlarge",  
                      "r4.large",  
                      "r4.xlarge",  
                      "r4.2xlarge",  
                      "r4.4xlarge",  
                      "r4.8xlarge",  
                      "r4.16xlarge",  
                      "r3.large",  
                      "r3.xlarge",  
                      "r3.2xlarge",  
                      "r3.4xlarge",  
                      "r3.8xlarge",  
                      "p2.xlarge",  
                      "p2.8xlarge",  
                      "p2.16xlarge",  
                      "g2.2xlarge",  
                      "g2.8xlarge",  
                      "f1.2xlarge",  
                      "f1.16xlarge",  
                      "i2.xlarge",  
                      "i2.2xlarge",  
                      "i2.4xlarge",  
                      "i2.8xlarge",  
                      "d2.xlarge",  
                      "d2.2xlarge",  
                      "d2.4xlarge",  
                      "d2.8xlarge"  
zone                 the availability zone the server should be created in  
keypair_name         the pre-created key pair name to use  
private_key          the private key to use to connect via ssh, i.e. the key from the key pair  
rstudio_password     the password to set for RStudio server  
