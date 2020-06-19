#!/bin/sh -l

echo "HOST: $1"
echo "SECRET: $2"
echo "Repo $GITHUB_REPOSITORY"

curl -X POST "$1/checkMe/byRepoFullName" -H "Content-Type: application/json" -H "X-CLIENT-SECRET: $2" --data '{"fullName": "'"$GITHUB_REPOSITORY"'"}' -v
