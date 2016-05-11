{% from 'setup/map.jinja' import argparse with context %}

{{ argparse.includes }}

install_argparse:
  {{ argparse.install_method }}:
    - {{ argparse.name }}
    {%- if salt['config.get']('virtualenv_path', None) %}
    - bin_env: {{ salt['config.get']('virtualenv_path') }}
    {%- endif %}
    {{ argparse.index_urls }}
    {{ argparse.requires}}
