# -*- coding: utf-8 -*-
# vim: ft=sls

cockpit-and-addons-present:
  pkg.installed:
    - pkgs:
      - cockpit
      - cockpit-podman
      - cockpit-ostree
      - cockpit-selinux
      - cockpit-session-recording
      - cockpit-sosreport
      - cockpit-storaged
      - cockpit-kdump
      - cockpit-machines

cockpit.socket:
  service.running:
    - enable: true

