{% if grains['os_family'] == 'Arch' %}
  {% set mysqldb = 'mysql-python' %}
{% elif grains['os_family'] == 'RedHat' %}
  {% set mysqldb = 'MySQL-python' %}
{% elif grains['os_family'] == 'Suse' %}
  {% set mysqldb = 'python-MySQL-python' %}
{% elif grains['os_family'] == 'FreeBSD' %}
  {% set mysqldb = 'py27-MySQLdb' %}
{% else %}
  {% set mysqldb = 'python-mysqldb' %}
{% endif %}

{% if grains['os'] == 'Fedora' and grains['osrelease'] in ['23', '24'] %}
  {% set mysqldb = 'python2-mysql' %}
{% endif %}

mysqldb:
  pkg.installed:
    - name: {{ mysqldb }}
