gpg_key:
  cmd.run:
    - name: wget -q -O /tmp/gpg.key https://rpm.grafana.com/gpg.key
    - name: rpm --import /tmp/gpg.key

pkg.installed:
  - pkg:
    - grafana
    - require: gpg_key
