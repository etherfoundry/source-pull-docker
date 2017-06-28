#!/bin/sh

MINIO_HOST=${MINIO_HOST:-"https://play.minio.io:9000/"}
ACCESS_KEY=${ACCESS_KEY:-"Q3AM3UQ867SPQQA43P2F"}
SECRET_KEY=${SECRET_KEY:-"zuf+tfteSlswRu7BJ86wekitnifILbZam1KYY3TG"}
SOURCE_BUCKET=${SOURCE_BUCKET:-"my-test-bucket"}
DEST_ROOT=${DEST_ROOT:-"/deploy"}
DEST_FOLDER="$DEST_ROOT/${DEST_FOLDER:-'src'}"

mkdir -p "$DEST_FOLDER"
mc config host add minio $MINIO_HOST $ACCESS_KEY $SECRET_KEY S3v4
mc cp --recursive "minio/$SOURCE_BUCKET" "$DEST_FOLDER"