include:
  {#- include base sls #}
  - setup.base
  {#- Fedora 22 specific packages #}
  - packages.gpg
  - packages.npm
  - packages.bower
  - packages.version_lock
  - packages.dnf-plugins
