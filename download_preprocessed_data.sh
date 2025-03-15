alias adown="aria2c -x16 -s16 -k1M"
mv data data_old

adown https://nlp.stanford.edu/projects/myasu/QAGNN/data_preprocessed_release.zip
unzip data_preprocessed_release.zip
mv data_preprocessed_release  data
