(resource 'group "sdln"
          :gid 3020
          :ensure :present)
(resource 'user "sdln"
          :uid 3020
          :gid 3020
          :home (homedir "sdln")
          :ensure :present)
(resource 'directory "/var/www/sdln.kmx.io"
          :owner "sdln"
          :group "www"
          :mode #o755
          :ensure :present)
(resource 'directory "/var/www/sdln.kmx.io/.well-known"
          :owner "letsencrypt"
          :group "www"
          :mode #o755
          :ensure :present)
(resource 'file "/etc/nginx/available/sdln.kmx.io.conf"
          :owner "root"
          :group "www"
          :mode #o640
          :content (read-file "sdln.kmx.io/etc/nginx/available/sdln.kmx.io.conf"))
(resource 'file "/etc/rc.d/sdln_kmx_io"
          :owner "root"
          :group "wheel"
          :mode #o755
          :content (read-file "sdln.kmx.io/etc/rc.d/sdln_kmx_io"))
