#!/usr/bin/env bash

docker run \
    --rm \
    -it \
    -p 8501:8501 \
    -e AWS_ACCESS_KEY_ID=$AWS_ACCESS_KEY_ID \
    -e AWS_SECRET_ACCESS_KEY=$AWS_SECRET_ACCESS_KEY \
    -e AWS_SESSION_TOKEN=$AWS_SESSION_TOKEN \
    -e MODEL_BASE_PATH=s3://hx-models/tf_serving \
    -e MODEL_NAME=saved_model_half_plus_two_cpu \
    -e S3_ENDPOINT=s3.us-east-1.amazonaws.com \
    -e AWS_REGION=us-east-1 \
    -e TF_CPP_MIN_LOG_LEVEL=1 \
    -t tensorflow/serving 
