#!/bin/sh 

> index.html \
	pandoc index.md \
	--to html \
	--verbose \
        --standalone

