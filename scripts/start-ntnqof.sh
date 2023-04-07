#!bin/bash


echo "start ntnqof ..."


docker run -it --cap-add=NET_ADMIN --network host --volume /home/ntn5g-cp/test/configurations/ntnqof.yaml:/ntnqof/ntnqof.yaml --name ntnqof shynuu/sa-ntn:ntnqof --ntncfg ntnqof.yaml


echo "ntnqof ok!"
