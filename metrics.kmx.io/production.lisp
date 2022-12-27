(resource 'group "metrics_kmx_io"
          :gid 3030
          :ensure :present)
(resource 'user "metrics_kmx_io"
          :uid 3030
          :gid 3030
          :home "/home/metrics_kmx_io"
          :shell "/bin/ksh"
          :ensure :present)
(resource 'directory "/home/metrics_kmx_io"
          :owner "metrics_kmx_io"
          :group "metrics_kmx_io"
          :mode #o750)
(resource 'directory "/var/www/metrics.kmx.io"
          :owner "metrics_kmx_io"
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
