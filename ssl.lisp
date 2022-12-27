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
          :group "wheel"
          :mode #o755)
