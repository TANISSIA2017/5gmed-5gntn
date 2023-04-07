#!/bin/bash
#sysctl -w net.ipv4.ip_forward=1
#iptables -A FORWARD -j ACCEPT
ETH=$(ip a | grep 172.16.40.37 | awk '{print($7)}')
#ETH=$(ip a | grep 10.10.10.181 | awk '{print($7)}')
echo $ETH
iptables -t nat -A POSTROUTING -o $ETH -j MASQUERADE
#ip route add 192.168.0.0/24 via 172.36.1.3
free5gc-upfd -c upfcfg.yaml
