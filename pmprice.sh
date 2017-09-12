#!/bin/bash

# Grab a text-only version of current spot prices for precious
# metals, clear the screen so it's not cluttered, use sed to
# strip out most of the HTML, delete the files you created.
# sed is weird in OSX, you have to specify an extension for
# the backup file, should work without on other nixes.

curl https://www.kitco.com/texten/texten.html > pmprice.txt
clear
sed -i .bk '1,/bullion/d; /<b>/,$d; s/<[^>]*>//g' pmprice.txt
cat pmprice.txt
rm -f pmprice.txt pmprice.txt.bk
