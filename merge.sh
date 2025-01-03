#!/bin/bash

TEMP_HOSTS="hosts.new.temp"
HOSTS="hosts"
NEW_HOSTS="hosts.new"

cp "$HOSTS" "$NEW_HOSTS"

grep -vxFf "$HOSTS" "$TEMP_HOSTS" >> "$NEW_HOSTS"

echo "Merged $TEMP_HOSTS into $NEW_HOSTS"
