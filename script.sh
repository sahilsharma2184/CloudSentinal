#############################
# Author: Sahil Sharma
# Version: v1
# Purpose: AWS Resource Tracker, to give you information about the aws resources which you have configured in the aws account, also using cron job to make the script executable at a specific time once during at end of the day.
# Note: Do the execution using aws cli after doing ssh into your aws ec2 instance
# Resources that are tracked:
# AWS S3
# AWS EC2
# AWS Lambda
# AWS IAM users
# Tip: Use AWS CLI reference documentation for better unsderstanding and using other commands
##############################
set -e #The script will check for any errors
set -x #The script runs in debug mode

echo " "
echo "Listing the aws ec2 instances list"
#For listing the ec2 instance
aws ec2 describe-instances

echo "  "
echo "Listing the aws s3 buckets list"
#For listing the s3 buckets
aws s3 ls

echo " "
echo "Listing the lambda functions list"
#For listing lambda functions
aws lambda list-functions

echo " "
echo "Listing the IAM users list"
#For listing IAM users
aws iam list-users