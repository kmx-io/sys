(resource 'group "www"
          :ensure :present)
(resource 'directory "/etc/nginx"
          :owner "root"
          :group "www"
          :mode #o750)
(static-file "/etc/nginx/nginx.conf"
             :owner "root"
             :group "www"
             :mode #o640)
(static-file "/etc/nginx/ssl.conf"
             :owner "root"
             :group "www"
             :mode #o640)
(resource 'directory "/etc/nginx/enabled"
          :owner "root"
          :group "www"
          :mode #o750
          :ensure :present)
(resource 'directory "/etc/nginx/available"
          :owner "root"
          :group "www"
          :mode #o750
          :ensure :present)
(static-file "/etc/nginx/listen_http.conf"
             :owner "root"
             :group "www"
             :mode #o640)
(static-file "/etc/nginx/listen_https.conf"
             :owner "root"
             :group "www"
             :mode #o640)
(resource 'directory "/var/www"
          :owner "root"
          :group "wheel"
          :mode #o755
          :ensure :present)
(resource 'directory "/var/www/acme"
          :owner "root"
          :group "daemon"
          :mode #o755
          :ensure :present)
(resource 'directory "/var/www/acme/.well-known"
          :owner "root"
          :group "daemon"
          :mode #o755
          :ensure :present)
(resource 'symlink "/var/www/acme/.well-known/acme-challenge"
          :target ".."
          :owner "root"
          :group "daemon"
          :mode #o755
          :ensure :present)
