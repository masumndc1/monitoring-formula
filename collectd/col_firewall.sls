collectdb_firewall:
  firewalld.present:
    - name: public
    - default: False
    - ports:
        - 8086/tcp
