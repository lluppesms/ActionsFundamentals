#!/bin/sh -l

echo "hello $1"
echo "RESOURCE_GROUP_NAME is $2"
echo "time=$(date)" >> $GITHUB_OUTPUT
echo "RESOURCE_GROUP_NAME=$2" >> $GITHUB_OUTPUT

env | while IFS= read -r line; do
  value=${line#*=}
  name=${line%%=*}
  echo "V: $value"
  echo "N: $name"
  echo "$name=$value" >> $GITHUB_OUTPUT
done