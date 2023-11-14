nrpe_agent_install:
  pkg.installed:
    - name: nrpe
{% if grains['os_family'] == 'Suse' %}
    - name: monitoring-plugins-nrpe
{% elif grains['os_family'] == 'Redhat' %}
    - name: nagios-plugins-all
{% endif %}
