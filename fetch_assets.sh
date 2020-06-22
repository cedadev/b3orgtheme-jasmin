#!/bin/bash

# Fetches required assets for this theme from v3 Bootswatch Grunt output
# 1 argument: top level directory (containing Gruntfile.js) of bootswatch installation
# Set up this installation by e.g.
# git clone https://github.com/thomaspark/bootswatch.git --branch v3 bootswatch_3
# npm install (may need a few fixes e.g. npm audit fix)
# npm install grunt-contrib-sass --save-dev

# Run this script in the top level directory of the theme (same as setup.py)

# To run grunt, copy the _variables.scss to "dist/flatly" directory of bootswatch, then run
# grunt swatch:flatly
# and collect the output using the script below

SRCDIR=$1
THEME="flatly"

# copy the theme CSS & JS files
cp -v ${SRCDIR}/${THEME}/bootstrap.css ./orgtheme/static/orgtheme/_vendor/bootstrap/dist/css/bootstrap.css 
cp -v ${SRCDIR}/bower_components/bootstrap/dist/js/bootstrap.min.js ./orgtheme/static/orgtheme/_vendor/bootstrap/dist/js/bootstrap.min.js
cp -v ${SRCDIR}/assets/css/custom.min.css ./orgtheme/static/orgtheme/_assets/css/custom.min.css
cp -v ${SRCDIR}/assets/js/custom.js ./orgtheme/static/orgtheme/_assets/js/custom.js