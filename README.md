# salt-states

## Images:
![nagios](/images/nagios.png)


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
