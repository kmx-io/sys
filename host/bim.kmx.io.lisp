(setq *host*
      (resource 'host "bim.kmx.io"
                :user "root"
                :hostname "bim"))

(resource 'host "bim.kmx.io"
          #.(include "OpenBSD/host")
          ;; rc
          (static-etc-file "/etc/hosts"
                           :mode #o644)
          (static-etc-file "/etc/hostname.em0")
          (static-etc-file "/etc/sysctl.conf")
          ;; users
          #.(include "user/dx")
          #.(include "user/dx/forward-email")
          #.(include "user/root/forward-email")
          #.(include "user/npm")
          #.(include "user/vrizzt")
          ;; git
          #.(include "git")
          ;; ssl
          #.(include "ssl")
          ;; Nginx
          #.(include "nginx")
          ;; PostgreSQL
          #.(include "postgresql")
          ;; Sites
          #.(include "git.kmx.io/production")
          (resource 'file "/etc/rc.d/fcgiwrap"
                    :owner "root"
                    :group "wheel"
                    :mode #o755
                    :content (read-file "git.kmx.io/OpenBSD/etc/rc.d/fcgiwrap"))
          (resource 'file "/etc/rc.d/git_kmx_io"
                    :owner "root"
                    :group "wheel"
                    :mode #o755
                    :content (read-file "git.kmx.io/OpenBSD/etc/rc.d/git_kmx_io"))
          #.(include "metrics.kmx.io/production")
          #.(include "skills.kmx.io/production")
          #.(include "www.kmx.io/production")
          (resource 'file "/etc/rc.d/www_kmx_io"
                    :owner "root"
                    :group "wheel"
                    :mode #o755
                    :content (read-file "www.kmx.io/OpenBSD/etc/rc.d/www_kmx_io")))
