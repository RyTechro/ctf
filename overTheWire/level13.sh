cp ~/data.txt ./data.txt
xxd -r data.txt > data.gz
gunzip data.gz
mv data data.bz2
bunzip2 data.bz2
mv data data.gz
gunzip data.gz
mv data data.tar
tar --get -f data.tar
mv data5.bin data.tar
tar --get -f data.tar
mv data6.bin data.bz2
bunzip2 data.bz2
mv data data.tar
tar --get -f data.tar
mv data8.bin data.gz
gunzip data.gz
cat data