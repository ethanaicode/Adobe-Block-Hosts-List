#!/bin/bash
# merge.sh - Merge new host entries from hosts.new.temp into hosts.new (removing duplicates)

TEMP_HOSTS="AdobeHosts_Offline.txt"
HOSTS="hosts"
NEW_HOSTS="hosts.new"

cp "$HOSTS" "$NEW_HOSTS"
grep -vxFf "$HOSTS" "$TEMP_HOSTS" >> "$NEW_HOSTS"

echo "Merged $TEMP_HOSTS into $NEW_HOSTS"
