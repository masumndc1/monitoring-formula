install_required_packages:
  pkg.installed:
    - template: jinja
    - pkgs:
{% if grains['os_family'] == 'Redhat' %}
      - httpd
      - nagios-plugins-all
{% elif grains['os_family'] == 'Suse' %}
      - apache2
      - apache2-utils
      - monitoring-plugins-nagios
      - monitoring-plugins-nrpe
{% endif %}
      -  nrpe
      -  nagios
