 docker run -itd  --network host --volume /home/ntn5g-cp/test/configurations/webui.yaml:/free5gc/config/webuicfg.yaml --name webui free5gc/webui:v3.2.1 ./webui -c ./config/webuicfg.yaml
