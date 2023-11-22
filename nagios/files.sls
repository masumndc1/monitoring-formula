/etc/nagios/nagios.cfg:
  file.managed:
    - source: salt://monitoring/nagios/nagios.cfg

/etc/nagios/nrpe.cfg:
  file.managed:
    - source: salt://monitoring/nagios/nrpe.cfg

/etc/nagios/servers:
  file.directory:
    - user: root
    - group: nagios
    - dir_mode: 755
    - file_mode: 644

/etc/nagios/servers/monitoring.cfg:
  file.managed:
    - source: salt://monitoring/nagios/monitoring.cfg.jinja
    - template: jinja

/etc/nagios/servers/sys-dev1.cfg:
  file.managed:
    - source: salt://monitoring/nagios/sys-dev1.cfg.jinja
    - template: jinja

/etc/nagios/servers/sys-dev2.cfg:
  file.managed:
    - source: salt://monitoring/nagios/sys-dev2.cfg.jinja
    - template: jinja

/etc/nagios/servers/sys-prod1.cfg:
  file.managed:
    - source: salt://monitoring/nagios/sys-prod1.cfg.jinja
    - template: jinja

/etc/nagios/servers/sys-prod2.cfg:
  file.managed:
    - source: salt://monitoring/nagios/sys-prod2.cfg.jinja
    - template: jinja
