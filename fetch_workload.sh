#!/bin/bash
set -e

pushd $2
#ffmpeg -i $3/WATCH：\ White\ House\ Press\ Secretary\ Kayleigh\ McEnany\ briefs\ reporters\ \[hkmnhcsvueE\].mp4 -pix_fmt yuv420p -frames:v 18000 benchmark.y4m
mkdir frames
ffmpeg -i benchmark.y4m -qscale:v 2 frames/frame_%05d.png
mkdir barcodes
cp $1/make_barcode.py .
python3 make_barcode.py
mkdir outputs
ffmpeg -i frames/frame_%05d.png -i barcodes/barcode_%05d.png -filter_complex "[0][1]overlay=10:10" outputs/out_%05d.png
ffmpeg -framerate 30 -i outputs/out_%05d.png -pix_fmt yuv420p benchmark-barcode.y4m

ln -s $2/benchmark-barcode.y4m $1/gcc/playground/testmedia/test-barcode.y4m
ln -s $2/benchmark-barcode.y4m $1/vegas/playground/testmedia/test-barcode.y4m
touch ./outvideo.y4m
chmod a+w ./outvideo.y4m 
ln -s $2/outvideo.y4m $1/gcc/playground/outvideo.y4m
ln -s $2/outvideo.y4m $1/vegas/playground/outvideo.y4m
popd