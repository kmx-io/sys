(resource 'group "skills"
          :gid 3005
          :ensure :present)
(resource 'user "skills"
          :uid 3005
          :gid 3005
          :home "/home/skills"
          :shell "/bin/ksh"
          :ensure :present)
(resource 'directory "/home/skills"
          :owner "skills"
          :group "skills"
          :mode #o750)
(resource 'directory "/var/www/skills.kmx.io"
          :owner "skills"
          :group "www"
          :mode #o755
          :ensure :present)
(resource 'directory "/var/www/skills.kmx.io/.well-known"
          :owner "letsencrypt"
          :group "www"
          :mode #o755
          :ensure :present)
(resource 'file "/etc/nginx/available/skills.kmx.io.conf"
          :owner "root"
          :group "wheel"
          :mode #o644
          :content (read-file "skills.kmx.io/etc/nginx/available/skills.kmx.io.conf"))
(resource 'file "/etc/rc.d/skills_kmx_io"
          :owner "root"
          :group "wheel"
          :mode #o755
          :content (read-file "skills.kmx.io/etc/rc.d/skills_kmx_io"))
