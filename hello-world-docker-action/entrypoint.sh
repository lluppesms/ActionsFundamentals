#!/bin/sh -l

echo "hello $1"
echo "RESOURCE_GROUP_NAME is $2"
echo "time=$(date)" >> $GITHUB_OUTPUT
echo "RESOURCE_GROUP_NAME=$2" >> $GITHUB_OUTPUT
