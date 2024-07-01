#!/bin/bash


###################################

# Author: Cem VAROL
# Date: 01/19/24
# Version: V1
# Desc: AWS Usage Reporter
# This script lists the main resources on AWS
###################################


exec 1> >(tee -a "aws-usage-report.log")
# List S3 buckets


echo "Creating EC2 instance"
aws ec2 run-instances --image-id ami-04b70fa74e45c3917 --instance-type t2.micro --key-name aws_key_pair --security-group-ids sg-0d4d59af8d7e4111d
echo "_____________________________________________"



echo  "print S3 Bucket List"
aws s3 ls 
echo "_____________________________________________"

# Describe instantance information

echo  "print instance description"
aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceId'
echo "_____________________________________________"

# List Lambda Functions
echo "print Lambda Functions"
aws lambda list-functions 
echo "_____________________________________________"
# list AWS IAM users

echo "print IAM user list"
aws iam list-users  
echo "_____________________________________________"
#list VPC
echo  "print VPC list"
aws ec2 describe-vpcs
echo "_____________________________________________"

echo "List elatic IPs "
aws ec2 describe-addresses
