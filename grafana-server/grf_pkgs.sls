gpg_key:
  cmd.run:
    - name: curl https://rpm.grafana.com/gpg.key --output /tmp/gpg.key
    - name: rpm --import /tmp/gpg.key

grafana_pkgs:
  pkg.installed:
    - pkgs:
      - grafana
