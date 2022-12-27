(static-file "/etc/acme-client.conf"
             :owner "root"
             :group "wheel"
             :mode #o600)
(resource 'directory "/etc/ssl/private"
          :owner "root"
          :group "wheel"
          :mode #o700)
(resource 'directory "/var/www/acme"
          :owner "root"
          :group "daemon"
          :mode #o755)
(resource 'directory "/var/www/acme/.well-known"
          :owner "root"
          :group "daemon"
          :mode #o755)
(resource 'symlink "/var/www/acme/.well-known/acme-challenge"
          :target ".."
          :ensure :present)
(resource 'user "letsencrypt"
          :ensure :absent)
(resource 'group "letsencrypt"
          :ensure :absent)
