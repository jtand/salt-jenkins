include:
  {#- include the base sls #}
  - setup.base
  {#- Arch specific packages #}
  - packages.lxc
  - packages.npm
  - packages.bower
  {#- Python libs #}
  - python.setuptools

