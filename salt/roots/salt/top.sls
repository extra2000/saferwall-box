base:
  '*':
    - swapoff
    - podman
    - bridgenet
    - nginx
    {% if grains['os_family'] == 'RedHat' %}
    - cockpit
    {% endif %}
