#!/bin/bash
iperf -s -B 172.36.6.3 -p 8085 -u -l 1400 -i 1 -f b --tos 0x30 > results/app-server-ue-0-streaming-slice-1_streaming_1_probes.txt
