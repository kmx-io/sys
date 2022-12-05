#.(include "user/zabbix")
(static-file "/etc/zabbix/zabbix_server.conf"
             :owner "root"
             :group "wheel"
             :mode #o640)
(resource 'symlink "/etc/php-7.4/gd.ini"
          :target "../php-7.4.sample/gd.ini"
          :ensure :present)
(resource 'symlink "/etc/php-7.4/opcache.ini"
          :target "../php-7.4.sample/opcache.ini"
          :ensure :present)
(resource 'symlink "/etc/php-7.4/pgsql.ini"
          :target "../php-7.4.sample/pgsql.ini"
          :ensure :present)
(resource 'symlink "/etc/php-7.4/zabbix.ini"
          :target "../php-7.4.sample/zabbix.ini"
          :ensure :present)
