# -*- coding: utf-8 -*-
# vim: ft=sls

/etc/nginx/conf.d/https.conf:
  file.managed:
    - source: salt://nginx/files/https.conf.jinja
    - template: jinja

nginx.service:
  service.running:
    - enable: true
