(resource 'directory "/var/www/git.kmx.io"
          :owner "git"
          :group "www"
          :mode #o755
          :ensure :present)
(resource 'file "/etc/nginx/available/git.kmx.io.conf"
          :owner "root"
          :group "wheel"
          :mode #o644
          :content (read-file "git.kmx.io/etc/nginx/available/git.kmx.io.conf"))
