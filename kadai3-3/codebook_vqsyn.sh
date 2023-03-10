rm train.cep codebook data.cep1-40 data.index data.vqcep1-40 data.vqcep data.vqsyn
cat ../cep/df101sf_a*.cep | bcp -n 40 -L 40 -s 1 > train.cep
lbg -l 40 -e $1 < train.cep > codebook
bcp -n 40 -L 40 -s 1 data.cep > data.cep1-40
vq -l 40 codebook data.cep1-40 > data.index
ivq -l 40 codebook < data.index > data.vqcep1-40
merge -o -s 1 -n 40 -L 40 data.vqcep1-40 < data.cep > data.vqcep
excite -p 160 data.pitch | lmadf -m 40 -p 160 data.vqcep | x2x +fs > data.vqsyn

