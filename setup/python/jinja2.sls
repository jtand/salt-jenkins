{% from 'setup/map.jinja' import jinja2 with context %}

{{ jinja2.include }}

install-jinja2:
  {{ jinja2.install_method }}:
    {%- if salt['config.get']('virtualenv_path', None)  %}
    - bin_env: {{ salt['config.get']('virtualenv_path') }}
    {%- endif %}
    {{ jinja2.index_urls }}
    {{ jinja2.requires }}
{# pkg may need to have:
  - pkg: setup.packages.gcc instead of just gcc
#}
