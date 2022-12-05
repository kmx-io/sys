#.(include "user/zabbix")
(static-file "/etc/zabbix/zabbix_agentd.conf"
             :owner "root"
             :group "wheel"
             :mode #o640)
