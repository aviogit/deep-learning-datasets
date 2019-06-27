#!/bin/bash

outfile="googleimagesdownload-config.json"

echo -e '{'			 > $outfile
echo -e '\t"Records": ['	>> $outfile

cat README.md | grep '^\[' | sed 's:, :\n:g' | sed -e 's:\[::g' | sed "s:'\(.*\)':\t{\n\t\t\"keywords\"\: \"\1\",\n\t\t\"limit\"\: 100,\n\t\t\"chromedriver\"\: \"/usr/lib/chromium-browser/chromedriver\",\n\t\t\"print_urls\"\: true\n\t},:g" >> $outfile

sed -i 's:\},\]:}:g' $outfile		# wowowo what a nice dirty trick!

echo -e ']'			>> $outfile
echo -e '}'			>> $outfile

exit 0
