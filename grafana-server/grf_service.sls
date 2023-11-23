grafana-server:
  service.running:
    - enable: true
    - watch:
      - file: /etc/grafana/grafana.ini
