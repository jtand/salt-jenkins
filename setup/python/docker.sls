{% from 'setup/map.jinja' import docker with context %}
{% from 'setup/map.jinja' import docker_py with context %}

{{ docker_py.includes }}

install-docker:
  {{ docker.install_method }}
    - name: {{ docker.name }}

install-docker-py:
  {{ docker_py.install_method }}
    - name: {{ docker_py.name }}
    {%- if salt['config.get']('virtualenv_path', None)  %}
    - bin_env: {{ salt['config.get']('virtualenv_path') }}
    {%- endif %}
    {{ docker_py.index_urls }}
    {{ docker_py.requires }}
