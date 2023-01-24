x2x +sf $1 | frame -l 640 -p $2 | window -l 640 -L 1024 -w 1 | 
fftcep -m $3 -l 1024 > $1_$2_$3.cep
