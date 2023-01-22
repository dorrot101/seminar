
for i in 01 02 03 04 05 06 07 08 09 10
do
swab +s /db/ATR/c_set/wav/f101/sf_a/f101sf?a$i.ad | x2x +sf | ds -s 54 | x2x +fs > ./out/df101sf_a$i.16
done
