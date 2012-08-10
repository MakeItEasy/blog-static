#!/bin/sh

if [ -f ./_header.tpl ] && [ -f ./_footer.tpl ]
then
	for file in `ls -1 | grep "^[^_]*.tpl.content$"`
	do
		desfile=${file%.*}
		cat _header.tpl > $desfile
		cat $file >> $desfile
		cat _footer.tpl >> $desfile
	done
else
	echo "There is no _header.tpl or _footer.tpl file exist!"
	exit 1
fi

exit 0
