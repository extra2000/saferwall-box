nginx:
  user:
    name: vagrant
    group: vagrant
  frontend-pod:
    host: 127.0.0.1
    port: 8000
  backend-pod:
    host: 127.0.0.1
    port: 8080
  ssl:
    default-bits: 2048
    country: MY
    state: WP_Kuala_Lumpur
    city: Kuala_Lumpur
    organization-name: extra2000
    organization-unit: research
    common-name: localhost
    email: ventilator@radiator.abc
    days-valid: 365