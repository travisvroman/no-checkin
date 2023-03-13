# no-checkin
A command-line git utility configuration that blocks commits of temporary code.

## Purpose
This searches all staged code for the string `nocheckin` and, if found, fails the commit
process with an error, listing out each occurrence. This works by replacing your repo's 
`.git/hooks/pre-commit` script with a symbolic link to the one provided in this repo.

This should be cloned into your home directory as-is (i.e. `~/no-checkin/`.

This also recurses submodules and applies the rules there, too.

## Usage
To use, run `setup-no-checkin.sh` from the parent git directory (not submodules) of the repo
you want this functionality for. NOTE: If this repo is cloned to a different directory, the 
path in `setup-no-checkin.sh` will need to be modified.


