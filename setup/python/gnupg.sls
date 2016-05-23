{% from 'setup/map.jinja' import python_gnupg with context %}
{% from 'setup/map.jinja' import gnupg with context %}

{{ gnupg.includes }}

remove-python-gnupg:
  {{ python_gnupg.install_method }}
    - name: {{ python_gnupg.name }}

install-gnupg:
  {{ gnupg.install_method }}
    {%- if salt['config.get']('virtualenv_path', None)  %}
    - bin_env: {{ salt['config.get']('virtualenv_path') }}
    {%- endif %}
    {{ gnupg.index_urls }}
    {{ gnupg.requires }}
