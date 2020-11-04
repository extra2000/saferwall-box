# -*- coding: utf-8 -*-
# vim: ft=sls

/etc/nginx/conf.d/https.conf:
  file.managed:
    - source: salt://nginx/files/https.conf.jinja
    - template: jinja

# If NGINX is already installed, it have to be stop and then start again to apply configs
nginx-service-stop:
  service.dead:
    - name: nginx.service

nginx-service-running:
  service.running:
    - name: nginx.service
    - enable: true
