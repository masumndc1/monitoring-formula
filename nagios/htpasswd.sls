{% from "monitoring/vars.jinja" import nagiosadmin with context %}
set_htpasswd:
  cmd.run
    - name: htpasswd -cb /etc/nagios/passwd nagiosadmin {{ nagiosadmin }}
