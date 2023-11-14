{% set src = '/etc/nagios/objects/localhost.cfg' %}
{% set dst = '/etc/nagios/objects/localhost.cfg.bk' %}
{% if not salt['file.file_exists'](dst) %}
backup:
 file.copy:
  - name: {{ dst }}
  - source: {{ src }}
{% endif %}

/etc/nagios/conf.d/sys-dev1.cfg:
 file.managed:
  - source: salt://monitoring/nagios/sys-dev1.cfg

/etc/nagios/conf.d/sys-dev2.cfg:
 file.managed:
  - source: salt://monitoring/nagios/sys-dev2.cfg
  
/etc/nagios/conf.d/sys-prod1.cfg:
 file.managed:
  - source: salt://monitoring/nagios/sys-prod1.cfg

/etc/nagios/conf.d/sys-prod2.cfg:
 file.managed:
  - source: salt://monitoring/nagios/sys-prod2.cfg

/etc/nagios/conf.d/monitoring.cfg:
 file.managed:
  - source: salt://monitoring/nagios/monitoring.cfg

/etc/nagios/nrpe.cfg:
 file.managed:
  - source: salt://monitoring/nagios/nrpe.cfg
