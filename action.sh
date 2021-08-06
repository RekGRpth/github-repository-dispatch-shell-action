#!/bin/sh

set -eux
echo "{\"event_type\":\"${INPUTS_EVENT_TYPE:-${GITHUB_REF##*/}}\",\"client_payload\":${INPUTS_CLIENT_PAYLOAD}}" | hub api "repos/${INPUTS_REPOSITORY:-${GITHUB_REPOSITORY}}/dispatches" --input -
