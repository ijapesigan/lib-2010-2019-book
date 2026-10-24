#!/bin/bash

# the SSH host: github-<owner> when ~/.ssh/config defines that alias (for
# example on Roar), else github.com
host="github.com"
if grep -Eqs "^Host[[:space:]]+(.*[[:space:]])?github-ijapesigan([[:space:]]|$)" ~/.ssh/config; then
  host="github-ijapesigan"
fi
git clone "git@${host}:ijapesigan/lib-2010-2019-book.git"
rm -rf "$PWD/.git"
mv "lib-2010-2019-book/.git" "$PWD"
rm -rf "lib-2010-2019-book"
