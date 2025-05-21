#!/bin/bash

########################

#Author : Sanket
#version : v1

#This script is to track and list aws resources.
#AWS s3 
#AWS EC2
#AWS IAM Users 
#AWS lambda


set -x
set -o pipefail
set -e

# Define instance ID (replace with your actual one)
INSTANCE_ID="i-xxxxxxxxxxxxxxxxx"

#Lists S3 bucket.
echo "Bucket list"
aws s3 ls

#list ec2 instances.
echo "list of EC2 instance_ID's." 
aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceId'

#list iam users.
echo "IAM users."
aws iam list-users

#list lambda functions.
echo "Lambda functions list."
aws lambda list-functions

echo "========= EC2 MONITORING (CloudWatch) ========="

# Get CPU utilization of EC2 instance (last 15 minutes)
echo -e "\n CPU Utilization (Last 15 mins):"
aws cloudwatch get-metric-statistics \
  --metric-name CPUUtilization \
  --start-time $(date -u -d '15 minutes ago' +%Y-%m-%dT%H:%M:%SZ) \
  --end-time $(date -u +%Y-%m-%dT%H:%M:%SZ) \
  --period 300 \
  --namespace AWS/EC2 \
  --statistics Average \
  --dimensions Name=InstanceId,Value=$INSTANCE_ID \
  --output text

