(setq *host*
      (resource 'host "bim.kmx.io"
                :user "root"
                :hostname "bim"))

(resource 'host "bim.kmx.io"
          ;; rc
          (static-etc-file "/etc/rc.conf.local")
          (static-etc-file "/etc/mail/mailer.conf"
                           :mode #o644)
          (static-etc-file "/usr/local/etc/mail/secrets")
          (static-etc-file "/usr/local/etc/mail/smtpd.conf")
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
          #.(include "www.kmx.io/production")
          (resource 'file "/etc/rc.d/www_kmx_io"
                    :owner "root"
                    :group "wheel"
                    :mode #o755
                    :content (read-file "www.kmx.io/FreeBSD/etc/rc.d/www_kmx_io")))
