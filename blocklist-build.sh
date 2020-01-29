#!/bin/sh
curl -s https://www.iblocklist.com/lists.php | sed -n "s/.*value='\(http.*\)'.*/\1/p" | sed "s/\&amp;/\&/g" | sed "s/http/\"http/g" | sed "s/gz/gz\"/g" | xargs wget -O - |  gunzip | egrep -v '^#' | gzip > blocklist.gz
