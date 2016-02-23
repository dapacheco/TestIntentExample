#!/bin/bash
if [ "${CI_PULL_REQUEST}" = "" ]
then
  echo "Pull request not found, cancelling build"
  curl --data '' https://circleci.com/api/v1/project/dapacheco/TestIntentExample/${CIRCLE_BUILD_NUM}/cancel?circle-token="$CIRCLE_TOKEN"
  exit 1
fi
