{% from 'setup/map.jinja' import etcd with context %}

{{ etcd.includes }}

install-etcd:
  {{ etcd.install_method }}
    {%- if salt['config.get']('virtualenv_path', None)  %}
    - bin_env: {{ salt['config.get']('virtualenv_path') }}
    {%- endif %}
    {{ etcd.index_urls }}
    {{ etcd.requires }}
