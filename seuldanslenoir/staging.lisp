(resource 'group "seuldanslenoir-staging"
          :gid 3002
          :ensure :present)
(resource 'user "seuldanslenoir-staging"
          :uid 3002
          :gid 3002
          :home "/home/seuldanslenoir-staging"
          :shell "/bin/ksh"
          :ensure :present)
(resource 'directory "/home/seuldanslenoir-staging"
          :owner "seuldanslenoir-staging"
          :group "seuldanslenoir-staging"
          :mode #o750)
(static-file "/home/seuldanslenoir-staging/config"
             :owner "seuldanslenoir-staging"
             :group "seuldanslenoir-staging"
             :mode #o640)
(resource 'directory "/var/www/seuldanslenoir-staging"
          :owner "seuldanslenoir-staging"
          :group "www"
          :mode #o755
          :ensure :present)
(resource 'file "/etc/nginx/available/seuldanslenoir-staging.conf"
          :owner "root"
          :group "wheel"
          :mode #o644
          :content (read-file "seuldanslenoir/etc/nginx/available/seuldanslenoir-staging.conf"))
(resource 'file "/etc/rc.d/seuldanslenoir_staging"
          :owner "root"
          :group "wheel"
          :mode #o755
          :content (read-file "seuldanslenoir/etc/rc.d/seuldanslenoir_staging"))
