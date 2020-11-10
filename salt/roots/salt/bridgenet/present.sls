# -*- coding: utf-8 -*-
# vim: ft=sls

{% if grains['os_family'] == 'Debian' %}
network-manager:
  pkg.installed
{% endif %}

{% if grains['os'] == 'Ubuntu' %}
# Fix "device strictly unmanaged" issue
/etc/NetworkManager/conf.d/10-globally-managed-devices.conf:
  file.touch

NetworkManager-restart:
  cmd.run:
    - name: systemctl restart NetworkManager.service
{% endif %}

{% if grains['os_family'] == 'Suse' %}
NetworkManager:
  pkg.installed

service-wicked-disable:
  service.running:
    - name: wicked
    - enable: false

service-NetworkManager-running:
  service.running:
    - name: NetworkManager
    - enable: true
{% endif %}

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
