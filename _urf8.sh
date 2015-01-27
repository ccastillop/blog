#! /bin/sh
# agrega la linea -# coding: urf-8 a los archivos haml para que trabaje con MAC

find . -type f -name '*.rb' -print | while read i
do
   sed '1s/^/# coding: utf-8\
/g' $i > $i.tmp && mv $i.tmp $i
done
