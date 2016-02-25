{% import params.jinja as params %}
include:
  {% if params.arch %}
  - platforms.arch
  {% elif params.rhel_5 %}
  - platforms.rhel_5
  {% elif params.rhel_6 %}
  - platforms.rhel_6
  {% elif params.rhel_7 %}
  - platforms.rhel_7
  {% elif params.debian %}
  - platforms.debian
  {% elif params.fedora_21 %}
  - platforms.fedora21
  {% elif params.fedora_22 %}
  - platforms.fedora22
  {% elif params.opensuse %}
  - platforms.opensuse
  {% elif params.ubuntu_12 %}
  - platforms.ubuntu12
  {% elif params.ubuntu_14 %}
  - platforms.ubuntu14
  {% elif params.ubuntu_15 %}
  - platforms.ubuntu15
  {% endif %}
  {#- If raet is the transport, install raet depends as well. #}
  {% if params.raet %}
  - transport.raet
  {% endif %}
