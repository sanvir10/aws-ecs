#!/bin/bash

# Execute this manuaaly to refresh the token
# aws ecr get-login-password --region us-west-2 | docker login --username AWS --password-stdin ACCOUNT_ID_HERE.dkr.ecr.us-west-2.amazonaws.com

account="ACCOUNT_ID_HERE"

region="us-west-2"

repo="nodejs"

fullname="${account}.dkr.ecr.${region}.amazonaws.com/${repo}:latest"

echo $fullname

docker build --tag ${fullname} .

sleep 5

docker push ${fullname}