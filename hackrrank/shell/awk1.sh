#!/bin/bash
awk '{ if ($4 !~ /^[0-9]+$/) print "Not all scores are available for " $1 }' awk.txt
