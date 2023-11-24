col_firewall_pkg:
  pkg.installed:
    - pkgs:
        - firewalld

collectdb_firewall:
  firewalld.present:
    - name: public
    - default: False
    - ports:
        - 8086/tcp
        - 25826/udp
    - require:
        - col_firewall_pkg
