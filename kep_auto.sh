
for i in 01 02 03 04 05 06 07 08 09 10
do
x2x +sf ./out/df101sf_a$i.16 | frame -l 640 -p 160 | window -l 640 -L 1024 -w 1 | fftcep -m 40 -l 1024 > ./cep/df101sf_a$i.cep
done
