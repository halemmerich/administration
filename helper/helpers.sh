#!/bin/bash

BACKUP_FILE_EXTENSION=backup

function getTimeStamp {
	date +"%T"
}

function replaceWithLink {
	FILE_TO_REPLACE="$2"
	TARGET_FOR_LINK="$1"

	TARGET_FOR_LINK=`realpath "$TARGET_FOR_LINK"`
	FILE_TO_REPLACE=`realpath "$FILE_TO_REPLACE"`

	if [ "$TARGET_FOR_LINK" = "$FILE_TO_REPLACE" ]
	then
		echo Link is alredy correct, nothing to do
		return 0
	fi

	if [ -e "$FILE_TO_REPLACE" ]
	then
		echo File "$FILE_TO_REPLACE" exists, moving
		mv "$FILE_TO_REPLACE" "$FILE_TO_REPLACE.$BACKUP_FILE_EXTENSION.`getTimeStamp`"
	fi
	
	ln -s "$TARGET_FOR_LINK" "$FILE_TO_REPLACE"
}
