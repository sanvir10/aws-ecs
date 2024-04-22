# Example to use nodejs with ECS

## Steps to deploy this container to ECS using Fargate

1.- Create repository in **nodejs** in Amazon ECR

2.- Execute the steps in **Upload docker image to ECR** from the README

3.- Create a Task Definition using the nodejs image.

4.-Now we can execute the task definition in ECS



## Upload docker image to ECR

1.- Execute this command to login to AWS


```
aws ecr get-login-password --region us-west-2 | docker login --username AWS --password-stdin ACCOUNT_ID:HERE.dkr.ecr.us-west-2.amazonaws.com
```

2.- Now update the build.sh to put your ACCOUNT_ID

3.- Set execution permission to the bash file with 

```
chmod +x build.sh
```

4.- Now execute buil.sg to push the image to ECR

