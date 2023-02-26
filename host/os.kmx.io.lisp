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
          #.(include "OpenBSD/host")
          ;; rc
          (static-etc-file "/etc/sysctl.conf")
          (static-etc-file "/etc/hostname.ix0")
          (static-etc-file "/etc/mail/secrets")
          (static-etc-file "/etc/mail/smtpd.conf")
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
          ;; Zabbix
          #.(include "zabbix/server")
          #.(include "zabbix/agent")
          ;; Sites
          #.(include "mail.kmx.io/production")
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
