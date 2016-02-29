{% from 'setup/map.jinja' import curl with context %}
{% import params.jinja as params %}

{%- if params.opensuse %}
include:
  - packages.ca-certificates-mozilla
{%- endif %}

curl:
  {{ curl.install_method }}:
    - name: {{ curl.name }}
    {%- if params.opensuse %}
    - require:
      - {{ curl.requires }}
    {%- endif %}


{% if params.rhel_5 %}
openssl:
  pkg.latest

update-openssl:
  cmd:
    - run
    - name: yum update -y --enablerepo=epel openssl
{% endif %}
