#!/bin/sh

# download data
./cinemagoer/docs/goodies/download-from-s3

# rename folder
mv imdb-dataset-* imdb-dataset

# fix s3-reduce script for macos
sed 's/zcat/zcat </g' ./cinemagoer/docs/goodies/s3-reduce > s3-reduce
chmod +x s3-reduce

# reduce data
./s3-reduce ./imdb-dataset

# import data
pipenv run ./cinemagoer/bin/s32cinemagoer.py ./imdb-dataset/partials 'postgresql://imdb:password@localhost/imdb'
