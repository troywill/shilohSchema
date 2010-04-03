#!/bin/bash
EDITOR=emacs

${EDITOR} tmp/csv/packages.csv packages.csv
${EDITOR} tmp/csv/latest_tarball.csv latest_tarball.csv
${EDITOR} tmp/csv/stowballs.csv stowballs.csv
${EDITOR} tmp/csv/webpages.csv webpages.csv
git add *.csv
git commit -a
git push origin master

