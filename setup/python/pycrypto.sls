include:
  - setup.packages.gcc
  - setup.python.pip

pycrypto:
  pip.installed:
    - name: pycrypto >= 2.6.1
    {%- if salt['config.get']('virtualenv_path', None)  %}
    - bin_env: {{ salt['config.get']('virtualenv_path') }}
    {%- endif %}
    - index_url: https://pypi-jenkins.saltstack.com/jenkins/develop
    - extra_index_url: https://pypi.python.org/simple
    - require:
      - cmd: pip-install
      - pkg: setup.packages.gcc
