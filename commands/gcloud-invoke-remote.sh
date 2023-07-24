#!/usr/bin/env bash
DATA=$(printf 'Hello!'|base64) && gcloud functions call helloPubSub --data '{"data":"'$DATA'"}'
gcloud functions call YOUR_FUNCTION_NAME --data '{"name":"Keyboard Cat"}'
