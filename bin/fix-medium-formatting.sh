#!/bin/sh

# the empty quote prefix after -i (in-place) is for OSX only :cran:
sed -i "" "s/…/\.\.\./g" $1
sed -i "" "s/—/---/g" $1
sed -i "" "s/“/\"/g" $1
sed -i "" "s/”/\"/g" $1
sed -i "" "s/’/'/g" $1
