#!/bin/bash

if [ "$1" == "" ]; then
    echo "Please set the ORGANIZATION ACCOUNT_ID as the first parameter"
fi

ACCOUNT_ID=$1
aws iam create-role --role-name OrganizationAccountAccessRole --assume-role-policy-document "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Effect\":\"Allow\",\"Principal\":{\"AWS\":\"arn:aws:iam::$ACCOUNT_ID:root\"},\"Action\":\"sts:AssumeRole\"}]}"
aws iam attach-role-policy --policy-arn arn:aws:iam::aws:policy/AdministratorAccess --role-name OrganizationAccountAccessRole