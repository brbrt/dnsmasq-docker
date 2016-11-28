# dnsmasq-docker

sudo docker build -t dnsmasq .


sudo docker run -d  \
  --restart unless-stopped \
  --net=host \
  --cap-add=NET_ADMIN \
  -p 53:53/udp \
  -p 67:67/udp \
  dnsmasq
