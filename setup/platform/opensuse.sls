include:
  {#- include base sls #}
  - setup.base
  {#- OpenSUSE specific packages #}
  - package.python-zypp
  {#- Python libs #}
  - python.xml
  - python.hgtools
  - python.setuptools-scm
