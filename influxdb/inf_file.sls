/etc/yum.repos.d/influxdb.repo:
  file.managed:
    - source: salt://monitoring/influxdb/influxdb.repo.jinja
