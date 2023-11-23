/etc/yum.repos.d/grafana.repo:
  file.managed:
    - source: salt://monitoring/grafana-server/grafana.repo.jinja
    - template: jinja
