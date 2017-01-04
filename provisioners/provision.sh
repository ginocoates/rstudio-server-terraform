#!/bin/bash
apt-get update -y

# install aws tools
apt-get install -y awscli

# install R dependencies
chmod 777 /tmp/libraries.R
Rscript /tmp/libraries.R

# change the R studio password using the parameter passed
echo "changing rstudio password to $1"
echo "rstudio:$1" | chpasswd
