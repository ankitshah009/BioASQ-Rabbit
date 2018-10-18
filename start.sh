#!/usr/bin/env bash

if [ "$RABBIT_HOST" = "" ] ; then
	RABBIT_HOST=172.17.0.2
fi

for dir in Splitter Expander Ranker Tiler Results; do
	echo "Starting $dir"
	cd $dir
	### convert to lower case since repo names are not allowed to be upppercase
	dir1=`echo "$dir" | awk '{print tolower($0)}'`
	echo $dir1
	#docker run -d -e HOST=$RABBIT_HOST -v /tmp/:/var/log --name $dir1 bioasq/$dir $HOST
	python service.py &
	cd -
done 
echo "Services started"
