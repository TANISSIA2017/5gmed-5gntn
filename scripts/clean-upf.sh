
echo "stop upf"

docker stop upf-0


echo "remove upf"

docker rm -v  upf-0

echo "uninstal gtp5g"

cd gtp5g

sudo make uninstall

echo "reinstall gtp5g"

make

sudo make install 

echo "OK!"
