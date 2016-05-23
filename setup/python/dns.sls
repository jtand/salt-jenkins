{% from 'setup/map.jinja' import dnspython with context %}

{{ dnspython.includes }}

install-dnspython:
  {{ dnspython.install_method }}:
    - name: {{ dnspython.name }}
    {%- if salt['config.get']('virtualenv_path', None)  %}
    - bin_env: {{ salt['config.get']('virtualenv_path') }}
    {%- endif %}
    {{ dnspython.index_urls }}
    {{ dnspython.requires }}

{#
include:
  - setup.python.pip

dnspython:
  pip.installed:
    - name: dnspython
    {%- if salt['config.get']('virtualenv_path', None)  %}
    - bin_env: {{ salt['config.get']('virtualenv_path') }}
    {%- endif %}
    - index_url: https://pypi-jenkins.saltstack.com/jenkins/develop
    - extra_index_url: https://pypi.python.org/simple
    - require:
      - cmd: pip-install
#}
