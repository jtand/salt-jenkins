{% from 'setup/map.jinja' import curl with context %}

{{ curl.includes }}

install_curl:
  {{ curl.install_method }}:
    - {{ curl.name }}
    - {{ curl.requires }}
