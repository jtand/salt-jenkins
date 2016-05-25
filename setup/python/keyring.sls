{% from 'setup/map.jinja' import jsonschema with context %}

{{ jsonschema.include }}

install-jsonschema:
  {{ jsonschema.install_method }}:
    {%- if salt['config.get']('virtualenv_path', None)  %}
    - bin_env: {{ salt['config.get']('virtualenv_path') }}
    {%- endif %}
    - upgrade: True
    {{ jsonschema.index_urls }}
    {{ jsonschema.requires }}
