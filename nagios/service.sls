nagios:
  service.running:
    - enable: true
    - watch:
      - file: /etc/nagios/*
{% if grains['os_family'] == 'Redhat' %}
httpd:
{% else %}
apache2:
{% endif%}
  service.running:
    - enable: true
    - watch:
      - file: /etc/nagios/*
nrpe:
  service.running:
    - enable: true
    - watch:
      - file: /etc/nagios/*
