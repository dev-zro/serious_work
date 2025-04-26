#!/bin/bash

cd $(dirname $0)
current_date=$(date +%F)
if ! [[ $(tail -n 1 README.md) =~ "$current_date" ]]
then
	echo "$current_date - another day of serious work  " >> README.md
	git add README.md
	git commit -m "more work"
	git push
fi
