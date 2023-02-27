#!/bin/sh


for format in ${formats:-html docx} ; do

    target="target/index.${format}"
    mkdir -p $(dirname $target)

    pandoc index.md \
	   --to "${format}" \
	   --standalone \
	   --output "${target}"

done

