/etc/yum.repos.d/influxdb.repo:
  file.managed:
    - source: salt://monitoring/influxdb/influxdb.repo.jinja

/etc/influxdb/influxdb.conf:
  file.managed:
    - source: salt://monitoring/influxdb/influxdb.conf.jinja
    - require:
      - pkg: influx_db
