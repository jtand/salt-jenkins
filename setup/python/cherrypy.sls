{% from 'setup/map.jinja' import cherrypy with context %}

{{ cherrypy.includes }}

install-cherrypy:
  {{ cherrypy.install_method }}
    {%- if salt['config.get']('virtualenv_path', None)  %}
    - bin_env: {{ salt['config.get']('virtualenv_path') }}
    {%- endif %}
    {{ cherrypy.index_urls }}
    {{ cherrypy.requires }}
