mv data data_old

aria2c -x16 -s16 -k1M https://nlp.stanford.edu/projects/myasu/QAGNN/data_preprocessed_release.zip
unzip data_preprocessed_release.zip
mv data_preprocessed_release  data
