(setq *host*
      (resource 'host "bim.kmx.io"
                :user "root"
                :hostname "bim"))

(resource 'host "bim.kmx.io"
          ;; rc
          (static-etc-file "/etc/rc.conf.local")
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
          (static-file "/var/db/postgres/data14/pg_hba.conf"
                       :owner "root"
                       :group "postgres"
                       :mode #o640
                       :after #'reload-postgresql)
          ;; Sites
          #.(include "www.kmx.io/production")
          (resource 'file "/etc/rc.d/www_kmx_io"
                    :owner "root"
                    :group "wheel"
                    :mode #o755
                    :content (read-file "www.kmx.io/FreeBSD/etc/rc.d/www_kmx_io"))
          #.(include "git.kmx.io/production")
          (resource 'file "/etc/rc.d/git_kmx_io"
                    :owner "root"
                    :group "wheel"
                    :mode #o755
                    :content (read-file "git.kmx.io/FreeBSD/etc/rc.d/git_kmx_io")))
