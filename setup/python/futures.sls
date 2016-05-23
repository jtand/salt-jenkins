{% from 'setup/map.jinja' import futures with context %}

{{ futures.includes }}

install-futures:
  {{ futures.install_method }}
    {%- if salt['config.get']('virtualenv_path', None)  %}
    - bin_env: {{ salt['config.get']('virtualenv_path') }}
    {%- endif %}
    {{ futures.index_urls }}
    {{ futures.requires }}
