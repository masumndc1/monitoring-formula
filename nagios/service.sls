nagios:
  service.running:
    - enable: true
    - watch:
      - file: /etc/nagios/*
{% if grains['os_family'] == 'Redhat' %}
httpd:
{% endif%}
apache2:
  service.running:
    - enable: true
    - watch:
      - file: /etc/nagios/*
nrpe:
  service.running:
    - enable: true
    - watch:
      - file: /etc/nagios/*
