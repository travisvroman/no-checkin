#!/bin/bash

# This is the installation script for the no-checking functionality for git repos.
# The source pre-commit path should be modified below if different from the default directory.

# Remove the existing pre-commit if it exists.
if [ -f ./.git/hooks/pre-commit ]; then
    rm ./.git/hooks/pre-commit
fi

# Create a symbolic link to the source file.
ln -s ~/no-checkin/pre-commit ./.git/hooks/pre-commit

# Also do this for all submodules.
for MODULE in $(grep path .gitmodules | sed 's/.*= //')
do
    # For each one, navigate to the appropriate module.
    # Remove the existing pre-commit if it exists.
    if [ -f ./.git/modules/${MODULE}/hooks/pre-commit ]; then
        rm ./.git/modules/${MODULE}/hooks/pre-commit 
    fi

    # Create the symbolic link for this module to the source file.
    ln -s ~/no-checkin/pre-commit .git/modules/${MODULE}/hooks/pre-commit
done
