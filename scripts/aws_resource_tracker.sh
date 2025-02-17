#!/bin/bash

############################################
#Author:Jk
#Date:17/02/2025
#
#Version:v1
#
#This script will report aws resource usage.
#
############################################


#AWS S3
#AWS EC2
#AWS Lambda
#AWS IAM Users

set -e

echo "Print s3 list..."
aws s3 ls > cd ../output/resource_tracker_output

echo "Print ec2 list..."
aws ec2 describe-instances >> cd ../output/resource_tracker_output

echo "Print lambda list..."
aws lambda list-functions >> cd ../output/resource_tracker_output

echo "Print IAM list..."
aws iam list-users >> cd ../output/resource_tracker_output
