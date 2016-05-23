# These are packages that all os's require to run the test suite
include:
  {#- packages #}
  - packages.git
  - packages.patch
  - packages.sed
  - packages.pyopenssl
  - packages.dnsutils
  - packages.dmidecode
  {#- python #}
  - python.salttesting
  - python.argparse
  - python.six
  - python.mock
  - python.timelib
  - python.coverage
  - python.unittest-xml-reporting
  - python.libcloud
  - python.requests
  - python.keyring
  - python.gnupg
  - python.cherrypy
  - python.etcd
  - python.gitpython
  - python.supervisor
  - python.boto
  - python.moto
  - python.psutil
  - python.tornado
  - python.pyvmomi
  - python.pycrypto
  - python.pyinotify
  - python.msgpack
  - python.jsonschema
  - python.rfc3987
  - python.strict_rfc3339
  {#- TODO: Figure out where to put one off cases like futures #}
  {% import 'setup/params.jinja' as params %}
  {% if not params.python_3 %}
  - python.futures
  {% endif %}
  {#- TODO: Do we need this? #}
  - extra-swap
