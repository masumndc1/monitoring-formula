install_required_packages:
  pkg.installed:
    - template: jinja
    - pkgs:
{% if grains['os_family'] == 'Redhat' %}
      - epel-release
      - httpd
      - nagios-plugins-all
      - nagios-plugins-nrpe
{% elif grains['os_family'] == 'Suse' %}
      - apache2
      - apache2-utils
      - monitoring-plugins-nagios
      - monitoring-plugins-nrpe
{% endif %}
      - firewalld
      - nrpe
      - nagios
