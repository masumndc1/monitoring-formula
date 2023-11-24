influxdb_firewall:
  firewalld.present:
    - name: public
    - default: False
    - ports:
        - 8086/tcp
        - 25826/udp
