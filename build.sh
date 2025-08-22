#!/bin/sh
docker buildx build --no-cache --build-arg FRAPPE_PATH=$FRAPPE_REPO_PATH --build-arg FRAPPE_BRANCH=version-15-fsm --build-arg PYTHON_VERSION=3.11.9 --build-arg NODE_VERSION=18.20.2 --build-arg APPS_JSON_BASE64=$APPS_JSON_BASE64 --tag $TAG_NAME --file images/custom/Containerfile .
