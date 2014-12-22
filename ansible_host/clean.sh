#!/bin/bash
echo "Removing ssh keys"
rm -f ansible_ssh*
rm hosts && touch hosts

echo "Removing docker container"
docker stop ansible_host && docker rm ansible_host
