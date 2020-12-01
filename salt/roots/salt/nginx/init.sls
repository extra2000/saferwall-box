# -*- coding: utf-8 -*-
# vim: ft=sls

include:
  - .package
  - .ssl
  - .service
  {% if grains['os_family'] == 'RedHat' %}
  - .selinux
  {% endif %}
