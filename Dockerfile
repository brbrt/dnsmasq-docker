FROM alpine:3.4

RUN apk --no-cache add dnsmasq

ADD dnsmasq.conf /etc/dnsmasq.conf

EXPOSE 53 53/udp
EXPOSE 67 67/udp

ENTRYPOINT [ "/usr/sbin/dnsmasq", "-d" ]
