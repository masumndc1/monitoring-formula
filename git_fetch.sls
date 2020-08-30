git@github.com:masumndc1/salt-states.git:
  git.latest:
    - target: /srv/salt 
    - identity: /home/masum/.ssh/id_rsa
    - force_clone: true
