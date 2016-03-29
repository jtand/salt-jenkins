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



# include:
#   - setup.python.pip
# 
# argparse:
#   pip.installed:
{#     {%- if salt['config.get']('virtualenv_path', None) %}
#     - bin_env: {{ salt['config.get']('virtualenv_path') }}
#     {%- endif %}#}
#     - index_url: https://pypi-jenkins.saltstack.com/jenkins/develop
#     - extra_index_url: https://pypi.python.org/simple
#     - require:
#       - cmd: pip-install
