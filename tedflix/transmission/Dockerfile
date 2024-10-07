FROM linuxserver/transmission:4.0.5

RUN apk add --no-cache p7zip wireguard-tools-wg-quick iptables

COPY root/ /

RUN chmod +x /etc/cont-init.d/10-prepare-transmission.sh && \
    chmod +x /marati/unpack.sh && \
    chmod +x /marati/update-settings.sh

RUN echo "0 0 1 * * /marati/update-settings.sh 2>&1" >> /etc/crontabs/root
