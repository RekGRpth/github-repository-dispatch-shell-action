#!/bin/sh

set -eux
echo "{\"event_type\": \"${INPUTS_EVENT_TYPE}\", \"client_payload\": ${INPUTS_CLIENT_PAYLOAD}}" | hub api "repos/${INPUTS_REPOSITORY}/dispatches" --input -
