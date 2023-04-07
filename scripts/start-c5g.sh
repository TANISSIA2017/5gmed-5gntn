#!/bin/bash 

echo "start db ..."
docker run -itd --network host  --volume dbdata:/data/db --name mongo mongo:4.4.14

echo "populate"
./test/free5gc-populate/populate --config test/free5gc-populate/config.yaml

echo "start nrf ..."
docker run -itd  --network host --volume /home/ntn5g-cp/test/configurations/nrf.yaml:/nrf/nrfcfg.yaml --name nrf shynuu/sa-ntn:nrf --config nrfcfg.yaml


echo "start amf ..."
docker run -itd  --network host --volume /home/ntn5g-cp/test/configurations/amf.yaml:/amf/amfcfg.yaml --volume /home/ntn5g-cp/test/containers/amf.sh:/amf/entrypoint.sh  --name amf shynuu/sa-ntn:amf ./entrypoint.sh

echo "start smf .."
docker  run -itd   --network host --volume /home/ntn5g-cp/test/configurations/smf.yaml:/smf/smfcfg.yaml --volume /home/ntn5g-cp/test/configurations/uerouting.yaml:/smf/uerouting.yaml --name smf shynuu/sa-ntn:smf --config smfcfg.yaml --uerouting uerouting.yaml

echo "start udr ..."
docker run -itd  --network host --volume /home/ntn5g-cp/test/configurations/udr.yaml:/udr/udrcfg.yaml --name udr shynuu/sa-ntn:udr --config udrcfg.yaml

echo "start pcf ..."
docker run -itd  --network host --volume /home/ntn5g-cp/test/configurations/pcf.yaml:/pcf/pcfcfg.yaml --name pcf shynuu/sa-ntn:pcf --config pcfcfg.yaml

echo "start udm ..."
docker run -itd  --network host --volume /home/ntn5g-cp/test/configurations/udm.yaml:/udm/udmcfg.yaml --name udm shynuu/sa-ntn:udm --config udmcfg.yaml

echo "start nssf ..."
docker run -itd  --network host --volume /home/ntn5g-cp/test/configurations/nssf.yaml:/nssf/nssfcfg.yaml --name nssf shynuu/sa-ntn:nssf --config nssfcfg.yaml

echo "start ausf ..."
docker run -itd  --network host --volume /home/ntn5g-cp/test/configurations/ausf.yaml:/ausf/ausfcfg.yaml --name ausf shynuu/sa-ntn:ausf --config ausfcfg.yaml


