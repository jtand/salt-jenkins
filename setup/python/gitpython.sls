{% from 'setup/map.jinja' import gitpython with context %}

{{ gitpython.includes }}

install-gitpython:
  {{ gitpython.install_method }}
    {%- if salt['config.get']('virtualenv_path', None)  %}
    - bin_env: {{ salt['config.get']('virtualenv_path') }}
    {%- endif %}
    {{ gitpython.index_urls }}
    {{ gitpython.requires }}
