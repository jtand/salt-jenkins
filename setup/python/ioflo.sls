{% from 'setup/map.jinja' import ioflo with context %}

{{ ioflo.include }}

install-ioflo:
  {{ ioflo.install_method }}:
    {%- if salt['config.get']('virtualenv_path', None)  %}
    - bin_env: {{ salt['config.get']('virtualenv_path') }}
    {%- endif %}
    {{ ioflo.index_urls }}
    {{ ioflo.requires }}

