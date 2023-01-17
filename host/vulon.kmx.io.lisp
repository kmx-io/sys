(setq *host*
      (resource 'host "vulon.kmx.io"
                :user "root"
                :hostname "vulon"
                :packages '("emacs:no_x11"
                            "nginx"
                            "postgresql-contrib"
                            "postgresql-server"
                            "redis"
                            "rspamd"
                            "rsync"
                            "ruby")))

(resource 'host "vulon.kmx.io"
          #.(include "OpenBSD/host")
          ;; rc
          (static-etc-file "/etc/sysctl.conf")
          (static-etc-file "/etc/hostname.vio0")
          ;; mail
          #.(include "OpenBSD/smtpd")
          ;; users
          #.(include "user/dx")
          #.(include "user/dx/forward-email")
          #.(include "user/root/forward-email")
          ;; git
          #.(include "git")
          ;; ssl
          #.(include "ssl")
          ;; Nginx
          #.(include "nginx")
          ;; PostgreSQL
          ;;#.(include "postgresql")
          ;; Sites
          #.(include "metrics.kmx.io/production")
          #.(include "www.kmx.io/production"))
