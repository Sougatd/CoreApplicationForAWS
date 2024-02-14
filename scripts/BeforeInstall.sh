#!/bin/bash
for i in ls -l 'C:\Websites\CoreApplication'
do
cp $i "C:\TempBackUp\ $i.date +%m%d%Y"
done
