#!/usr/bin/env bash
cat reponames.txt |
	while read name
	do
		if [ ! -d $name ]
			echo "Get $name"
		else 
			echo "Got $name"
		fi
	done
