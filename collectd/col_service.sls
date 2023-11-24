collectd:
  service.running:
    - enable: true

col_firewalld:
  service.running:
    - name: firewalld
    - enable: true
