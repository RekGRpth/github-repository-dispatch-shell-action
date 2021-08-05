#!/bin/sh

set -eux
env | sort
hub release delete v1 || echo "$?"
hub release create --message "${INPUTS_MESSAGE}" v1
