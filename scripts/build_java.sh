#!/bin/bash

set -e

: "${AWS_ACCESS_KEY_ID?Need to set AWS_ACCESS_KEY_ID}"
: "${AWS_SECRET_ACCESS_KEY?Need to set AWS_SECRET_ACCESS_KEY}"
: "${SMTP_USERNAME?Need to set SMTP_USERNAME}"
: "${SMTP_PASSWORD?Need to set SMTP_PASSWORD}"
: "${EMAIL_FROM?Need to set EMAIL_FROM}"
: "${EMAIL_TO?Need to set EMAIL_TO}"
: "${DROPBOX_ACCESS_TOKEN?Need to set DROPBOX_ACCESS_TOKEN}"
: "${DROPBOX_PARENT_FOLDER?Need to set DROPBOX_PARENT_FOLDER}"
build_dir=${S3NOTIFIER_REPO:=s3notifier}

if [ ! -d buildoutput ]; then
  mkdir buildoutput
fi

pushd $build_dir
  mvn clean verify
  mvn package
  cp target/s3notifier-function.jar ../buildoutput/
popd
