#!/bin/bash
EDITOR=emacs
STOWBALL_TOP_DIR='/home/troy/rcs/stowball'

${EDITOR} tmp/csv/packages.csv packages.csv
${EDITOR} tmp/csv/webpages.csv webpages.csv
${EDITOR} tmp/csv/latest_tarball.csv latest_tarball.csv
${EDITOR} tmp/csv/stowballs.csv stowballs.csv
git add *.csv
git commit -a
echo "==> git push origin master"
git push origin master
sleep 1
/home/troy/rcs/stowball/stowball-write-db-from-csv
