#!/bin/sh

set -eux
curl \
    --data "${INPUTS_DATA}" \
    --header "Accept: application/vnd.github.v3+json" \
    --request POST \
    "https://${GITHUB_REPOSITORY_OWNER}:${INPUTS_TOKEN}@api.github.com/repos/${INPUTS_REPOSITORY}/dispatches"
