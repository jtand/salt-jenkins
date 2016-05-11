{% from 'setup/map.jinja' import coverage with conext %}

{{ coverage.includes }}

install-coverage:
  {{ coverage.install_method }}
    {{ coverage.name }}
    {{ coverage.index_urls }}
    {{ coverage.requires }}
include:
  - setup.python.pip

coverage:
  pip.installed:
    - name: 'coverage==3.7.1'
    {%- if salt['config.get']('virtualenv_path', None)  %}
    - bin_env: {{ salt['config.get']('virtualenv_path') }}
    {%- endif %}
    - index_url: https://pypi-jenkins.saltstack.com/jenkins/develop
    - extra_index_url: https://pypi.python.org/simple
    - require:
      - cmd: pip-install
