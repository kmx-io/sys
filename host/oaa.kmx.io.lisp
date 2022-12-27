(setq *host*
      (resource 'host "oaa.kmx.io"
                :user "root"
                :hostname "os"
                :packages '("emacs:no_x11"
                            "nginx"
                            "postgresql-contrib"
                            "postgresql-server"
                            "rspamd"
                            "rsync"
                            "ruby")))

(resource 'host "oaa.kmx.io"
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
          ;(resource 'file "/etc/mail/dkim/oaa.kmx.io.key"
          ;          :owner "root"
          ;          :group "_rspamd"
          ;          :mode #o440)
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
          ;; ssl
          #.(include "ssl")
          ;; Nginx
          #.(include "nginx")
          ;; PostgreSQL
          ;;#.(include "postgresql")
          ;; Sites
          #.(include "metrics.kmx.io/production")
          #.(include "www.kmx.io/production")
          ;; oaa.kmx.io
          (resource 'directory "/var/www/oaa.kmx.io"
                    :owner "root"
                    :group "www"
                    :mode #o755
                    :ensure :present)
          (static-file "/etc/nginx/available/oaa.kmx.io.conf"
                       :owner "root"
                       :group "wheel"
                       :mode #o644))
