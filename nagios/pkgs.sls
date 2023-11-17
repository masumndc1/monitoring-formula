install_required_packages:
  pkg.installed:
    - template: jinja
{% if grains['os_family'] == 'Redhat' %}
    - name: httpd
    - name: nagios-plugins-all
{% elif grains['os_family'] == 'Suse' %}
    - name: apache2
    - name: monitoring-plugins-nrpe
{% endif %}
    - name: nrpe
    - name: nagios
