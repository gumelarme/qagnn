# download ConceptNet
#
alias adown="aria2c -x16 -s16 -k1M"

mkdir -p data/
mkdir -p data/cpnet/
# wget -nc -P data/cpnet/ https://s3.amazonaws.com/conceptnet/downloads/2018/edges/conceptnet-assertions-5.6.0.csv.gz
adown --dir data/cpnet/ https://s3.amazonaws.com/conceptnet/downloads/2018/edges/conceptnet-assertions-5.6.0.csv.gz
cd data/cpnet/
yes n | gzip -d conceptnet-assertions-5.6.0.csv.gz
# download ConceptNet entity embedding
adown https://csr.s3-us-west-1.amazonaws.com/tzw.ent.npy
cd ../../




# download CommensenseQA dataset
mkdir -p data/csqa/
adown --dir data/csqa/ https://s3.amazonaws.com/commensenseqa/train_rand_split.jsonl
adown --dir data/csqa/ https://s3.amazonaws.com/commensenseqa/dev_rand_split.jsonl
adown --dir data/csqa/ https://s3.amazonaws.com/commensenseqa/test_rand_split_no_answers.jsonl

# create output folders
mkdir -p data/csqa/grounded/
mkdir -p data/csqa/graph/
mkdir -p data/csqa/statement/



# download OpenBookQA dataset
adown --dir data/obqa/ https://s3-us-west-2.amazonaws.com/ai2-website/data/OpenBookQA-V1-Sep2018.zip
yes n | unzip data/obqa/OpenBookQA-V1-Sep2018.zip -d data/obqa/

# create output folders
mkdir -p data/obqa/fairseq/official/
mkdir -p data/obqa/grounded/
mkdir -p data/obqa/graph/
mkdir -p data/obqa/statement/
