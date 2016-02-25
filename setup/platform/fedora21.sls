include:
  {#- include base sls #}
  - setup.base
  {#- Fedora 21 specific packages #}
  - packages.gpg
  - packages.npm
  - packages.bower
