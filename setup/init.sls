{% import 'setup/params.jinja' as params with context %}
include:
  {% if params.arch %}
  - setup.platform.arch
  {% elif params.rhel_5 %}
  - setup.platform.rhel5
  {% elif params.rhel_6 %}
  - setup.platform.rhel6
  {% elif params.rhel_7 %}
  - setup.platform.rhel7
  {% elif params.debian %}
  - setup.platform.debian
  {% elif params.fedora_21 %}
  - setup.platform.fedora21
  {% elif params.fedora_22 %}
  - setup.platform.fedora22
  {% elif params.opensuse %}
  - setup.platform.opensuse
  {% elif params.ubuntu_12 %}
  - setup.platform.ubuntu12
  {% elif params.ubuntu_14 %}
  - setup.platform.ubuntu14
  {% elif params.ubuntu_15 %}
  - setup.platform.ubuntu15
  {% endif %}
  {#- If raet is the transport, install raet depends as well. #}
  {% if params.raet %}
  - setup.transport.raet
  {% endif %}
