#!/bin/bash


###################################

# Author: Cem VAROL
# Date: 01/19/24
# Version: V1
# Desc: AWS Usage Reporter
This script list the main resources on AWS
###################################



# List S3 buckets

echo "print S3 Bucket List"
aws s3 ls 

# Describe instantance information

echo "print instance description"
aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceId' 

# List Lambda Functions
echo "print Lambda Functions"
aws lambda list-functions 

# list AWS IAM users

echo "print IAM user list"
aws iam list-users  



