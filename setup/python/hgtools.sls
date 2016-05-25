{% from 'setup/map.jinja' import hgtools with context %}

{{ hgtools.include }}

install-hgtools:
  {{ hgtools.install_method }}:
    {%- if salt['config.get']('virtualenv_path', None)  %}
    - bin_env: {{ salt['config.get']('virtualenv_path') }}
    {%- endif %}
    {{ hgtools.index_urls }}
    {{ hgtools.requires }}
