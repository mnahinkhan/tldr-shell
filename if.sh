#!/usr/bin/env bash

# Get IP info from the internet.
# If it succeeds, print success message!
# Otherwise, print that there are errors.

if curl ipinfo.io; then
    echo "Succeeded in getting your public IP details!"
else
    echo "Error getting your IP details..."
fi
