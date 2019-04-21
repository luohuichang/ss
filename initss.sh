password=$1
port=1443
yum install docker -y && systemctl enable docker && systemctl start docker
docker run -dt --name ss -p $port:$port mritd/shadowsocks -s "-s 0.0.0.0 -p $port -m aes-128-cfb -k $password --fast-open"

echo start ss success 
echo "  " the port $port
echo "  " the password $password
