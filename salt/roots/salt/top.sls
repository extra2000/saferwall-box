base:
  '*':
    - swapoff
    - podman
    - nginx
    {% if grains['os_family'] == 'RedHat' %}
    - cockpit
    {% endif %}
