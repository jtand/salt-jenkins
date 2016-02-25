include:
  {#- include the base sls #}
  - setup.base
  {#- Ubuntu 12 specific packages #}
  - packages.npm
  - packages.bower
