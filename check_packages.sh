#!/bin/bash

# Victor Näslund <victor.naslund@smhi.se> 20210118

# If updates exists we print that and exit 1
# Forcing the user to rebuild/update this container image
dnf check-update --refresh
status=$?

if test $status -eq 100
then
    echo "New updates exists, please rebuild/update this container image, exiting now!"
    exit 1
elif test $status -eq 1
     then
    echo "Failed checking for update for this container image, exiting now!"
    exit 1
fi

exit 0
