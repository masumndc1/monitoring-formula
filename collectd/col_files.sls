/etc/collectd.conf:
  file.managed:
    - source: salt://monitoring/collectd/collectd.conf.jinja
    - require:
      - pkg: collect_d
