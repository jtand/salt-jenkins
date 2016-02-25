include:
  {#- Include base sls #}
  - setup.base
  {#- RHEL 6 specific packages #}
  - packages.centos_pycrpto
  - packages.npm
  - packages.bower
  {#- Python26 libs #}
  - python.unittest2
  - python.argparse
