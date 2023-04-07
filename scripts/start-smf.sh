#!/bin/bash 

echo "start smf ..."
docker  run -it   --network host --volume /home/ntn5g-cp/test/configurations/smf.yaml:/smf/smfcfg.yaml --volume /home/ntn5g-cp/test/configurations/uerouting.yaml:/smf/uerouting.yaml --name smf shynuu/sa-ntn:smf --config smfcfg.yaml --uerouting uerouting.yaml
