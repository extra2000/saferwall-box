# -*- coding: utf-8 -*-
# vim: ft=sls

/opt/nginx/ssl:
  file.directory:
    - user: {{ pillar['nginx']['user']['name'] }}
    - group: {{ pillar['nginx']['user']['group'] }}
    - makedirs: true

/opt/nginx/ssl/ssl.conf:
  file.managed:
    - source: salt://nginx/files/ssl.conf.jinja
    - user: {{ pillar['nginx']['user']['name'] }}
    - group: {{ pillar['nginx']['user']['group'] }}
    - template: jinja

/etc/pki/nginx:
  file.directory

/etc/pki/nginx/private:
  file.directory:
    - mode: 500

nginx-ssl-generate:
  cmd.run:
    - name: openssl req -x509 -newkey rsa:4096 -keyout private/server.key -out server.crt -days {{ pillar['nginx']['ssl']['days-valid'] }} -nodes -config /opt/nginx/ssl/ssl.conf
    - cwd: /etc/pki/nginx
    - require:
      - file: /opt/nginx/ssl/ssl.conf

nginx-dhparm-present:
  cmd.run:
    - name: openssl dhparam -out /etc/pki/nginx/private/dhparam.pem 4096
    - require:
      - file: /etc/pki/nginx/private

/etc/nginx/ssl-params.conf:
  file.managed:
    - name: /etc/nginx/ssl-params.conf
    - source: salt://nginx/files/ssl-params.conf.jinja
