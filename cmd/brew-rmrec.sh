#!/bin/bash

to_remove=$1' '`brew deps $1`
to_remove=`echo $to_remove | tr " " "\n"`

echo $to_remove
