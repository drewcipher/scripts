 text-only version of current spot prices for precious
# metals, clear the screen so it's not cluttered, use sed to
# remove all the html, delete the file.

curl https://www.kitco.com/texten/texten.html > pmprice.txt
clear
sed '46,58!d' pmprice.txt
rm -f pmprice.txt
