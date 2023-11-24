/etc/collectd.conf:
  file.managed:
    - source: salt://monitoring/collectd/collectd.conf.jijna
    - require:
      - pkg: collect_d
