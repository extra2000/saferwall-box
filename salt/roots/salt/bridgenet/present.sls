# -*- coding: utf-8 -*-
# vim: ft=sls

br0:
  network.managed:
    - enabled: true
    - onboot: yes
    - type: bridge
    - ipaddr: 10.77.1.1
    - netmask: 255.255.255.0
    - bridge: br0
    - delay: 0
    - ports: eth0
