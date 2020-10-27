# -*- coding: utf-8 -*-
# vim: ft=sls

bridgenet-present:
  cmd.run:
    - name: |
        nmcli conn add type bridge con-name br0 ifname br0
        nmcli conn modify br0 ipv4.addresses '10.77.1.1/24'
        nmcli conn modify br0 ipv4.gateway '10.77.1.1'
        nmcli conn modify br0 ipv4.dns '10.77.1.1'
        nmcli conn modify br0 ipv4.method manual
        nmcli conn add type ethernet slave-type bridge con-name bridge-br0 ifname eth0 master br0
        nmcli conn up br0
