#!/bin/sh

if [ -z ${1+x} ]; 
  then echo "Provide the path to wikidiff2 source as the argument to this script"; 
else 
  docker build . -t wikidiff2_builder && docker run -v $1:/var/wikidiff2 -w /var/wikidiff2 -it wikidiff2_builder bash
fi

