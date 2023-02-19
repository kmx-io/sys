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
(when (subtypep (type-of (host-os *host*)) 'os-openbsd)
  (resource 'file "/etc/rc.d/fcgiwrap"
            :owner "root"
            :group "wheel"
            :mode #o755
            :content (read-file "git.kmx.io/etc/rc.d/fcgiwrap"))
  (resource 'file "/etc/rc.d/git_kmx_io"
            :owner "root"
            :group "wheel"
            :mode #o755
            :content (read-file "git.kmx.io/OpenBSD/etc/rc.d/git_kmx_io")))

(when (subtypep (type-of (host-os *host*)) 'os-freebsd)
  (resource 'file "/etc/rc.d/git_kmx_io"
            :owner "root"
            :group "wheel"
            :mode #o755
            :content (read-file "git.kmx.io/FreeBSD/etc/rc.d/git_kmx_io")))
