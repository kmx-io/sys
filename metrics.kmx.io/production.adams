(resource 'group "kmxmetrics"
          :gid 3030
          :ensure :present)
(resource 'user "kmxmetrics"
          :uid 3030
          :gid 3030
          :home "/home/kmxmetrics"
          :shell "/bin/ksh"
          :ensure :present)
(resource 'directory "/home/kmxmetrics"
          :owner "kmxmetrics"
          :group "kmxmetrics"
          :mode #o750)
(resource 'directory "/var/www/metrics.kmx.io"
          :owner "kmxmetrics"
          :group "www"
          :mode #o755
          :ensure :present)
(resource 'directory "/var/www/metrics.kmx.io/.well-known"
          :owner "letsencrypt"
          :group "www"
          :mode #o755
          :ensure :present)
(resource 'file "/etc/nginx/available/metrics.kmx.io.conf"
          :owner "root"
          :group "wheel"
          :mode #o644
          :content (read-file "metrics.kmx.io/etc/nginx/available/metrics.kmx.io.conf"))
(resource 'file "/etc/rc.d/metrics_kmx_io"
          :owner "root"
          :group "wheel"
          :mode #o755
          :content (read-file "metrics.kmx.io/etc/rc.d/metrics_kmx_io"))
