service.running:
  - name: nagios
    - enable: true
    - watch:
      - file: /etc/nagios/*
  - name: nrpe
    - enable: true
    - watch:
      - file: /etc/nagios/*
{% if grains['os_family'] == 'Redhat' %}
  - name: httpd
{% else %}
  - name: apache2
{% endif%}
    - enable: true
    - watch:
      - file: /etc/nagios/*
