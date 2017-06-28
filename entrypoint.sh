#!/bin/sh

MINIO_HOST=${MINIO_HOST:-"https://play.minio.io:9000/"}
ACCESS_KEY=${ACCESS_KEY:-"Q3AM3UQ867SPQQA43P2F"}
SECRET_KEY=${SECRET_KEY:-"zuf+tfteSlswRu7BJ86wekitnifILbZam1KYY3TG"}

mc config host add minio $MINIO_HOST $ACCESS_KEY $SECRET_KEY S3v4
