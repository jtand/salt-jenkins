{% from 'setup/map.jinja' import bottle with context %}

{{ bottle.includes }}

install-bottle:
  {{ bottle.install_method }}
    {%- if salt['config.get']('virtualenv_path', None)  %}
    - bin_env: {{ salt['config.get']('virtualenv_path') }}
    {%- endif %}
    {{ bottle.index_urls }}
    {{ bottle.requires }}
