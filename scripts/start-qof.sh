
#!bin/bash

echo "start qof ..."

docker run -it --cap-add=NET_ADMIN --network host --volume /home/ntn5g-cp/test/configurations/qof.yaml:/qof/qofcfg.yaml --name qof shynuu/sa-ntn:qof --config qofcfg.yaml

echo "qof ok!"
