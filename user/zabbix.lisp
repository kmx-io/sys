(resource 'group "zabbix"
          :gid 7400
          :ensure :present)
(resource 'user "zabbix"
          :uid 7400
          :gid 7400
          :home (homedir "zabbix")
          :ensure :present)
