#!/bin/bash

################
#Author:-Amanjot
#Project:-Resource Tracker
################

set -x

echo "Print Number of EC2"
aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceId'

echo "Print Number of S3 Buckets"
aws s3 ls

echo "Print List Of Lambda Functions"
aws lambda list-functions

echo "print the Number of IAM Users"
aws iam list-users | jq '.Users[].UserId'


echo "Print List Of Volumes"
aws ec2 describe-volumes | jq '.Volumes[].Attachments[].VolumeId'
