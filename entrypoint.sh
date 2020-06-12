#!/bin/sh -l

echo $GITHUB_REPOSITORY

curl -X POST http://goodreadme.androidstory.dev:8080/checkMe/byRepoFullName -H 'Content-Type: application/json' --data '{"fullName": "VovaStelmashchuk/Test-repo"}'
