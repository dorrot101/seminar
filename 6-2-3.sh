for i in 01 02 03 04 05 06 07 08 09 10
do
cat ./cep/df101sf_a$i.cep | bcp -n 40 -L 40 -s 1 > train.cep
lbg -l 40 -e 256 < train.cep > codebook
done
