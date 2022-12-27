(setq *host*
      (resource 'host "os.kmx.io"
                :user "root"
                :hostname "os"
                :packages '("emacs:no_x11"
                            "fcgi"
                            "git"
                            "ImageMagick"
                            "libgit2"
                            "nginx"
                            "php-pgsql"
                            "postgresql-contrib"
                            "postgresql-server"
                            "rspamd"
                            "rsync"
                            "ruby"
                            "sbcl"
                            "zabbix-agent"
                            "zabbix-server:pgsql"
                            "zabbix-web")))

(resource 'host "os.kmx.io"
          ;; rc
          (static-file "/etc/sysctl.conf"
                       :owner "root"
                       :group "wheel"
                       :mode #o600)
          (static-file "/etc/rc.conf.local"
                       :owner "root"
                       :group "wheel"
                       :mode #o600)
          (static-file "/etc/hostname.ix0"
                       :owner "root"
                       :group "wheel"
                       :mode #o600)
          (static-file "/etc/mail/smtpd.conf"
                       :owner "root"
                       :group "wheel"
                       :mode #o640)
          (resource 'file "/etc/mail/dkim/os.kmx.io.key"
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
          #.(include "user/zor")
          #.(include "user/vrizzt")
          ;; git
          #.(include "git")
          ;; ssl
          #.(include "ssl")
          ;; Nginx
          #.(include "nginx")
          ;; PostgreSQL
          #.(include "postgresql")
          ;; Zabbix
          #.(include "zabbix/server")
          #.(include "zabbix/agent")
          ;; Sites
          #.(include "mail.kmx.io/production")
          #.(include "git.kmx.io/production")
          #.(include "git.kmx.io/test")
          #.(include "metrics.kmx.io/production")
          #.(include "skills.kmx.io/production")
          #.(include "www.kmx.io/production")
          ;; os.kmx.io
          (resource 'directory "/var/www/os.kmx.io"
                    :owner "root"
                    :group "www"
                    :mode #o755
                    :ensure :present)
          (static-file "/etc/nginx/available/os.kmx.io.conf"
                       :owner "root"
                       :group "wheel"
                       :mode #o644))
