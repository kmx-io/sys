(resource 'group "mana-staging"
          :gid 3003
          :ensure :present)
(resource 'user "mana-staging"
          :uid 3003
          :gid 3003
          :home "/home/mana-staging"
          :shell "/bin/ksh"
          :ensure :present)
(resource 'directory "/home/mana-staging"
          :owner "mana-staging"
          :group "mana-staging"
          :mode #o750)
(resource 'directory "/var/www/mana-staging"
          :owner "mana-staging"
          :group "www"
          :mode #o755
          :ensure :present)
(resource 'file "/etc/nginx/available/mana-staging.conf"
          :owner "root"
          :group "wheel"
          :mode #o644
          :content (read-file "mana/etc/nginx/available/mana-staging.conf"))
(resource 'file "/etc/rc.d/mana_staging"
          :owner "root"
          :group "wheel"
          :mode #o755
          :content (read-file "mana/etc/rc.d/mana_staging"))
