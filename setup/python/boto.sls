{% from 'setup/map.jinja' import boto with context %}
{% from 'setup/map.jinja' import boto3 with context %}

{{ boto.includes }}

install-boto:
  {{ boto.install_method }}
    - {{ boto.name }}{{ boto.version }}
    {%- if salt['config.get']('virtualenv_path', None)  %}
    - bin_env: {{ salt['config.get']('virtualenv_path') }}
    {%- endif %}
    {{ boto.index_urls }}
    {{ boto.requires }}

install-boto3:
  {{ boto3.install_method }}
    - {{ boto3.name }}{{ boto.version }}
    {%- if salt['config.get']('virtualenv_path', None)  %}
    - bin_env: {{ salt['config.get']('virtualenv_path') }}
    {%- endif %}
    {{ boto3.index_urls }}
    {{ boto3.requires }}

