state_pull:
  git.latest:
    - name: git@github.com/masumndc1/salt-states.git
    - target: /srv/salt 
    - identity: /root/.ssh/id_rsa
    - require:
        - pkg: git
	- ssh_known_hosts: github.com
