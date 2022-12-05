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
          ;; rc
          (static-file "/etc/sysctl.conf"
                       :owner "root"
                       :group "wheel"
                       :mode #o600)
          (static-file "/etc/rc.conf.local"
                       :owner "root"
                       :group "wheel"
                       :mode #o600)
          (static-file "/etc/hostname.vio0"
                       :owner "root"
                       :group "wheel"
                       :mode #o600)
          (static-file "/etc/mail/smtpd.conf"
                       :owner "root"
                       :group "wheel"
                       :mode #o640)
          #+nil(resource 'file "/etc/mail/dkim/vulon.kmx.io.key"
                         :owner "root"
                         :group "_rspamd"
                         :mode #o440)
          (static-file "/etc/rspamd/local.d/dkim_signing.conf"
                       :owner "root"
                       :group "wheel"
                       :mode #o640)
          (static-file "/etc/rspamd/local.d/multimap.conf"
                       :owner "root"
                       :group "wheel"
                       :mode #o640)
          (static-file "/etc/rspamd/local.d/whitelist.sender.domain.map"
                       :owner "root"
                       :group "wheel"
                       :mode #o640)
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
          ;; letsencrypt
          #.(include "letsencrypt")
          ;; Nginx
          #.(include "nginx")
          ;; PostgreSQL
          ;;#.(include "postgresql")
          ;; Sites
          #.(include "www.kmx.io/production")
          ;; vulon.kmx.io
          (resource 'directory "/var/www/vulon.kmx.io"
                    :owner "root"
                    :group "www"
                    :mode #o755
                    :ensure :present)
          (resource 'directory "/var/www/vulon.kmx.io/.well-known"
                    :owner "letsencrypt"
                    :group "www"
                    :mode #o755
                    :ensure :present)
          (static-file "/etc/nginx/available/vulon.kmx.io.conf"
                       :owner "root"
                       :group "wheel"
                       :mode #o644))
