#!/usr/bin/env bash
#
TARGET_DIRECTORY=../
GITORG=iterorganization
#
cat reponames.txt | grep -v '#' |
	while read repo
	do
		if [ ! -d "${TARGET_DIRECTORY}${repo}" ]
		then
			#echo "Get $repo"
			git clone "git@github.com:${GITORG}/${repo}" "${TARGET_DIRECTORY}$repo"
		else 
			echo "Already cloned ${TARGET_DIRECTORY}${repo}"
		fi
	done
