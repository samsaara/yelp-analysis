#!/bin/sh

echo 'creating directories...'
mkdir -p $HOME/work/yelp/data/embeddings $HOME/Downloads
cd $HOME/Downloads/

echo 'downloading "names.zip"...'
wget https://www.ssa.gov/oact/babynames/names.zip
unzip names.zip -d $HOME/work/yelp/data/names
echo 'unzipped names.zip in $HOME/work/yelp/data/names...'

python $HOME/work/yelp/import_keras.py
echo 'replacing "theano" as backend...'
sed -i 's/tensorflow/theano/g' $HOME/.keras/keras.json

rm $HOME/work/yelp/import_keras.py

