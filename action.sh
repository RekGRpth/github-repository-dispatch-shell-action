#!/bin/sh

set -eux
curl \
    --data "{\"event_type\": \"${INPUTS_EVENT_TYPE}\", \"client_payload\": ${INPUTS_CLIENT_PAYLOAD}}" \
    --header "Accept: application/vnd.github.v3+json" \
    --request POST \
    "https://${GITHUB_REPOSITORY_OWNER}:${INPUTS_TOKEN}@api.github.com/repos/${INPUTS_REPOSITORY}/dispatches"
