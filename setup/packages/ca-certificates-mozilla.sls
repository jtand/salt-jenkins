{% from "setup/map.jinja" import ca-certificates-mozilla with context %}

ca-certificates-mozilla:
  {{ ca-certificates-mozilla.install_method }}:
    - name: {{ ca-certificates-mozilla.name }}
