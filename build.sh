#!/bin/bash

REGION="us-east-1"

export AWS_REGION=${REGION}

cd terraform

$(which terraform) apply -var-file=environments/staging.tfvars -auto-approve

REPO_URL=$(terraform output ecr_repository_url)

cd ..

$(which docker) build --no-cache -t ${REPO_URL}:latest -f Dockerfile .

aws ecr get-login-password --region $REGION | docker login -u AWS --password-stdin ${REPO_URL}

docker push ${REPO_URL}:latest

$(which kubectl) apply -f k8s/deployment.yaml