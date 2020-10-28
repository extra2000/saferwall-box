# -*- coding: utf-8 -*-
# vim: ft=sls

/tmp/selinux-nginx/nginx.te:
  file.managed:
    - source: salt://nginx/files/nginx.te
    - makedirs: true
    - force: true

build_selinux_nginx_te_into_module:
  cmd.run:
    - name: checkmodule -M -m -o nginx.mod nginx.te
    - cwd: /tmp/selinux-nginx

build_nginx_te_module_into_pp_file:
  cmd.run:
    - name: semodule_package -o nginx.pp -m nginx.mod
    - cwd: /tmp/selinux-nginx

remove_existing_nginx_policy:
  cmd.run:
    - name: semodule -r nginx
    - success_retcodes:
      - "0"
      - "1"

load_nginx_pp_file:
  cmd.run:
    - name: semodule -i nginx.pp
    - cwd: /tmp/selinux-nginx
