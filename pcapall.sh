#/bin/bash

ext=".pcap"
for file in ./*
do
  name=$file$ext
  tshark -F pcap -r $file -w $name
done
