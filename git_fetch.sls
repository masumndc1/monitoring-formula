state_pull:
  git.latest:
    - name: git@github.com/masumndc1/salt-states:
    - target: /srv/salt 
    - require:
        - pkg: git
