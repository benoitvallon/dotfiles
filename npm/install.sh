#!/bin/sh
#
# npm
#

# Check for npm
if test ! $(which npmz)
then
  echo "  Installing npm for you."
  curl -L https://www.npmjs.com/install.sh | sh
fi
