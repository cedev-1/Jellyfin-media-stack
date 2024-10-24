FROM debian:bullseye-slim

RUN apt-get update && \
    apt-get install -y curl openvpn && \
    apt-get clean

COPY ./vpn/vpn-config/config.ovpn /etc/openvpn/config.ovpn
COPY ./vpn/vpn-config/credentials.txt /etc/openvpn/credentials.txt

CMD ["openvpn", "--config", "/etc/openvpn/config.ovpn", "--auth-user-pass", "/etc/openvpn/credentials.txt"]