#!/bin/bash
# Bash script to zip the whole project in order to make it deriverable
# please make sure zip and texlive are installed

set -e  # exit on error

OUTFILE=../outfile.zip
[ -e $OUTFILE ] && rm $OUTFILE  # remove if exists already


# compile the report (and save it to root folder)
echo "Compiling the report..."

latexmk -cd -shell-escape -silent -pdf report/report.tex 


# zip it (excluding useless stuff)
echo "Zipping..."
zip -r $OUTFILE report/report.pdf src/notebook.ipynb

