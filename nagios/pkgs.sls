install_required_packages:
  pkg.installed:
    - name: httpd
    - name: nrpe
    - name: nagios
{% if grains['os_family'] == 'Redhat' %}
    - name: nagios-plugins-all
{% elif grains['os_family'] == 'Suse' %}
    - name: monitoring-plugins-nrpe
{% endif %}
