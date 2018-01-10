FROM debian:stable-slim

MAINTAINER Santiago Platero (https://github.com/plater777)

RUN apt-get update && \
apt-get install -y --force-yes apt-transport-https arping bro bro-aux broctl dhcp-probe dnsrecon dsniff ethtool flow-tools flowscan ftp \
geoip-bin guessnet inetutils-ping inetutils-tools ipcalc iproute2 macchanger masscan msktutil nbtscan ndiff net-tools netcat netdiscover \ 
netsniff-ng nfdump nfdump-sflow nfs-common nfstrace ngrep nmap ntp ntpdate openssh-client openssh-sftp-server p0f pcaputils pcredz \
samba sipcrack sipdialer sipgrep siproxd sipsak smbc smbclient smbnetfs snmp socat sqlmap ssldump sslsplit sslstrip tcpdump tcputils \
telnet tftp tkmib traceroute tshark winbind && \
apt-get autoclean

ENTRYPOINT ["/bin/bash"]

CMD ["echo -ne 'Hello Dave..."]