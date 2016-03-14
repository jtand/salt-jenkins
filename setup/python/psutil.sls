include:
  {%- if grains['os_family'] not in ('FreeBSD', 'Gentoo') %}
  - setup.packages.gcc
  {%- endif %}
  - setup.python.pip
{%- if grains['os_family'] not in ('Arch', 'Solaris', 'FreeBSD', 'Gentoo', 'MacOS') %}
{#- These distributions don't ship the develop headers separately #}
  - setup.python.headers
{% endif %}

psutil:
  pip.installed:
    - index_url: https://pypi-jenkins.saltstack.com/jenkins/develop
    - extra_index_url: https://pypi.python.org/simple
    - require:
      {%- if grains['os_family'] not in ('Arch', 'Solaris', 'FreeBSD', 'Gentoo', 'MacOS') %}
      {#- These distributions don't ship the develop headers separately #}
      - pkg: python-dev
      {%- endif %}
      {%- if grains['os_family'] not in ('FreeBSD', 'Gentoo') %}
        {#- FreeBSD always ships with setup.packages.gcc #}
      - pkg: setup.packages.gcc
      {%- endif %}
      - cmd: pip-install
