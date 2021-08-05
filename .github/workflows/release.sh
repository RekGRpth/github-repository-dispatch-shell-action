#!/bin/sh

set -eux
env | sort
hub release delete "${GITHUB_REF##*/}" || echo "$?"
hub release create --message "${INPUTS_MESSAGE}" "${GITHUB_REF##*/}"
