(setq *host*
      (resource 'host "bim.kmx.io"
                :user "root"
                :hostname "bim"
                :packages '("git"
                            "libgit2"
                            "nginx"
                            "postgresql-contrib"
                            "postgresql-server"
                            "rsync")))

(resource 'host "bim.kmx.io"
          ;; rc
          (static-file "/etc/sysctl.conf"
                       :owner "root"
                       :group "wheel"
                       :mode #o600)
          (static-file "/etc/rc.conf.local"
                       :owner "root"
                       :group "wheel"
                       :mode #o600)
          (static-file "/etc/hostname.rge0"
                       :owner "root"
                       :group "wheel"
                       :mode #o600)
          ;; pf
          #.(include "pf")
          ;; sshd
          #.(include "sshd")
          ;; genpassword
          #.(include "OpenBSD/genpassword")
          ;; backup
          #.(include "OpenBSD/backup")
          ;; users
          #.(include "user/dx")
          #.(include "user/dx/forward-email")
          #.(include "user/root/forward-email")
          ;; git
          #.(include "git")
          ;; Nginx
          #.(include "nginx")
          ;; PostgreSQL
          #.(include "postgresql")
          ;; Sites
          #.(include "git.kmx.io/production")
          #.(include "git.kmx.io/test")
          #.(include "metrics.kmx.io/production")
          #.(include "www.kmx.io/production")
          ;; bim.kmx.io
          (resource 'directory "/var/www/bim.kmx.io"
                    :owner "root"
                    :group "www"
                    :mode #o755
                    :ensure :present)
          (resource 'directory "/var/www/bim.kmx.io/.well-known"
                    :owner "letsencrypt"
                    :group "www"
                    :mode #o755
                    :ensure :present)
          (static-file "/etc/nginx/available/bim.kmx.io.conf"
                       :owner "root"
                       :group "wheel"
                       :mode #o644))
