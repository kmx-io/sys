(resource 'group "skills-staging"
          :gid 3006
          :ensure :present)
(resource 'user "skills-staging"
          :uid 3006
          :gid 3006
          :home "/home/skills-staging"
          :shell "/bin/ksh"
          :ensure :present)
(resource 'directory "/home/skills-staging"
          :owner "skills-staging"
          :group "skills-staging"
          :mode #o750)
(resource 'directory "/var/www/skills-staging"
          :owner "skills-staging"
          :group "www"
          :mode #o755
          :ensure :present)
(resource 'file "/etc/nginx/available/skills-staging.conf"
          :owner "root"
          :group "wheel"
          :mode #o644
          :content (read-file "skills/etc/nginx/available/skills-staging.conf"))
(resource 'file "/etc/rc.d/skills_staging"
          :owner "root"
          :group "wheel"
          :mode #o755
          :content (read-file "skills/etc/rc.d/skills_staging"))
