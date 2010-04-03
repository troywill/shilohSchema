#!/bin/bash
EDITOR=emacs

${EDITOR} packages.csv tmp/csv/packages.csv
${EDITOR} latest_tarball.csv tmp/csv/latest_tarball.csv
${EDITOR} stowballs.csv tmp/csv/stowballs.csv
${EDITOR} webpages.csv tmp/csv/webpages.csv
