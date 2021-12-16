(resource 'group "www_kmx_io"
          :gid 3007
          :ensure :present)
(resource 'user "www_kmx_io"
          :uid 3007
          :gid 3007
          :home "/home/www.kmx.io"
          :shell "/bin/ksh"
          :ensure :present)
(resource 'directory "/home/www.kmx.io"
          :owner "www_kmx_io"
          :group "www_kmx_io"
          :mode #o750)
(resource 'directory "/home/www.kmx.io/log"
          :owner "www_kmx_io"
          :group "www_kmx_io"
          :mode #o750
          :ensure :present)
(resource 'directory "/var/www/www.kmx.io"
          :owner "www_kmx_io"
          :group "www"
          :mode #o755
          :ensure :present)
(resource 'file "/etc/nginx/available/www.kmx.io.conf"
          :owner "root"
          :group "www"
          :mode #o640
          :content (read-file "www.kmx.io/etc/nginx/available/www.kmx.io.conf"))
(resource 'file "/etc/rc.d/www_kmx_io"
          :owner "root"
          :group "wheel"
          :mode #o755
          :content (read-file "www.kmx.io/etc/rc.d/www_kmx_io"))
