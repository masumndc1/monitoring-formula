# salt formula to setup nagios and grafana in a cluster

## Usages:
1. You can fork this repo to your github account.
Add this formula in master config file. example can be:

```
[root@saltmaster master.d]# pwd
/etc/salt/master.d
[root@saltmaster master.d]# ls
file_gitfs.conf  pillar.conf
[root@saltmaster master.d]# cat file_gitfs.conf
fileserver_backend:
  - roots
  - gitfs

file_roots:
  base:
    - /srv/salt
  devel:
    - /srv/salt

gitfs_remotes:
  - https://github.com/masumndc1/monitoring-formula.git:
    - mountpoint: salt://monitoring

gitfs_provider: gitpython

```
2. Add this formula to top.sls file in saltmaster node.
```
[root@saltmaster master.d]# cat /srv/salt/top.sls
# example top file
# this should be in /srv/salt folder
# /srv/salt should have 0755
base:
  '*':
    - monitoring.greet

  'monitoring*':
    - monitoring

  'sys-*':
    - monitoring.nrpe_agent
[root@saltmaster master.d]#

```
3. Change vars.jinja file accordingly, if you dont have set pillar.
Here monitoring is nagios server node, all of the other sys_* nodes
are monitoring agents which will be montored. I have set a really
simple password for nagiosadmin user. This should be strong as possible.

```
❯ pwd
/Documents/github/monitoring-formula
❯ cat vars.jinja
{% set monitoring = "10.91.203.114" %}
{% set sys_dev1 = "10.91.203.23" %}
{% set sys_dev2 = "10.91.203.184" %}
{% set sys_prod1 = "10.91.203.177" %}
{% set sys_prod2 = "10.91.203.217" %}
{% set nagiosadmin = "nagiosadmin" %}
❯
```

4. Finally run following command in saltmaster node.
```
[root@saltmaster ~]# salt \* state.apply
```

5. Browse following for the dashboard
```
nagios: http:monitoring_IP/nagios
grafana: http:monitoring_IP:3000
```

## Images:
![nagios](/images/nagios.png)
![grafana_dashboard](/images/grafana_dashboard.png)


## Troubleshooting:

Symptom 1: **Could not interpret output from ping command**

fix:
Run following in the monitoring node.

```$ chmod u+x /bin/ping ```

Symptom 2: **Nagios - HTTP WARNING: HTTP/1.1 403 Forbidden**

It was because there was no index.html file for httpd.

fix 1:
```
$ touch /var/www/html/index.html
$ chmod 755 /var/www/html/index.html
```

fix 2:
Comment out following two line as bellow

```
$ cat /etc/httpd/conf.d/welcome.conf

<LocationMatch "^/+$">
#Options -Indexes
#ErrorDocument 403 /error/noindex.html
</LocationMatch>
```
