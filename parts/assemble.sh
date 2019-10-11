#!/usr/bin/env bash
#
# Assemble parts.<page> into site pages

for PAGE_PARTS in ./parts.* ; do
	echo "Assembling: $PAGE_PARTS"
	PAGE_NAME="${PAGE_PARTS#*parts.}.html"
	echo "into $PAGE_NAME"

	cat $( cat $PAGE_PARTS ) > ../site/$PAGE_NAME
done
