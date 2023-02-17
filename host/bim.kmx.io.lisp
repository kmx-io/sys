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
          #.(include "OpenBSD/host")
          ;; rc
          (static-etc-file "/etc/sysctl.conf")
          (static-etc-file "/etc/rc.conf.local")
          (static-etc-file "/etc/hostname.rge0")
          (resource 'file "/etc/hosts"
                    :owner "root"
                    :group "wheel"
                    :mode #o644
                    :content (read-file "hosts"))
          ;; users
          #.(include "user/dx")
          #.(include "user/dx/forward-email")
          #.(include "user/root/forward-email")
          #.(include "user/vrizzt")
          ;; git
          #.(include "git")
          ;; Nginx
          #.(include "nginx")
          ;; PostgreSQL
          #.(include "postgresql")
          ;; Sites
          #.(include "git.kmx.io/production")
          #.(include "metrics.kmx.io/production")
          #.(include "www.kmx.io/production")
          ;; ci
          #.(include "ci/mux"))
