include:
  {#- Include base sls #}
  - setup.base
  {#- RHEL 5 specific packages #}
  - packages.centos_pycrypto
  - packages.gpg
  {#- Python26 libs #}
  - python.unittest2
  - python.argparse
