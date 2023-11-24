/etc/yum.repos.d/influxdb.repo:
  file.managed:
    - source: salt://monitoring/influxdb/influxdb.repo.jinja
    - template: jinja

/etc/influxdb/influxdb.conf:
  file.managed:
    - source: salt://monitoring/influxdb/influxdb.conf.jinja
    - template: jinja
    - require:
      - pkg: influx_db
