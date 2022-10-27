#!/bin/bash
APP_NAME=$1
REGISTRY=$2
CLEAN_BRANCH_NAME=$3

export REGISTRY=$REGISTRY
export CLEAN_BRANCH_NAME=$CLEAN_BRANCH_NAME 

echo "Docker down"
docker-compose -f docker-compose.yml -f docker-compose.pipeline.yml down

