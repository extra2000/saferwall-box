# -*- coding: utf-8 -*-
# vim: ft=sls

br0:
  network.managed:
    - enabled: false
    - onboot: no
    - type: bridge
