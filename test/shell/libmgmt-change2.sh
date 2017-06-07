#!/bin/bash -e

go build libmgmt-change2.go
# this example should change graphs frequently, and then shutdown...
$timeout --kill-after=30s 20s ./libmgmt-change2 &
pid=$!
wait $pid	# get exit status
e=$?
exit $e
