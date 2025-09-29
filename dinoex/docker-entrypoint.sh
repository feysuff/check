#!/usr/bin/env bash
set -e

CONTAINER_ALREADY_STARTED="CONTAINER_ALREADY_STARTED_PLACEHOLDER"
if [ ! -e $CONTAINER_ALREADY_STARTED ]; then
    touch $CONTAINER_ALREADY_STARTED
    echo "-- First container startup --"
    rake db:schema:load
    rake db:seed
else
    echo "-- Not first container startup --"
fi

exec "$@"
