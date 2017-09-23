URI='https://vi.stackexchange.com/feeds'
LINES=5

EXEC="/usr/bin/curl -s" 

$EXEC $URI |xmllint --format -| grep title |\
sed -e :a -e 's/<[^>]*>//g;/</N' |\
sed -e 's/[ \t]*//' |\
sed -e 's/\(.*\)/· \1/' |\
sed -e 's/\.//' |\
sed -e 's/\"//' |\
sed -e 's/\"//' |\
head -n $(($LINES + 2)) |\
tail -n $(($LINES))
