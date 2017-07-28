#!/bin/bash

# if [ -d "./out" ]; then
#   rm -r ./out
# fi


#convert -quality 100 -resize 500x500 "raku-bols+bol-graphique+principal+yasefanprod.jpg" "output.png"

mkdir -p images/small/;
mkdir -p images/medium/;
mkdir -p images/large/;

for f in `find ./gallery -name "*.jpg"`
do
    convert $f -resize 320x320    images/small/${f##*/}
    convert $f -resize 800x800    images/medium/${f##*/}
    convert $f -resize 1600x1600  images/large/${f##*/}
done
