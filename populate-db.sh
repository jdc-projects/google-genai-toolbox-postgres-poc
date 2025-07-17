#!/bin/sh

# download data
./cinemagoer/docs/goodies/download-from-s3

# rename folder
mv imdb-dataset-* imdb-dataset

# import data
pipenv run ./cinemagoer/bin/s32cinemagoer.py ./imdb-dataset 'postgresql://imdb:password@localhost/imdb'
