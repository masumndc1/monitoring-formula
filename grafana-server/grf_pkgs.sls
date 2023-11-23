gpg_key:
  cmd.run:
    - name: wget -q -O /tmp/gpg.key https://rpm.grafana.com/gpg.key
    - name: rpm --import /tmp/gpg.key

grafana:
  pkg.installed:
    - require: gpg_key
    - refresh: True
