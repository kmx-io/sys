(setq *host* (resource 'host "reed.kmx.io"
                       :user "root"
                       :hostname "reed"
                       :packages '("emacs:no_x11"
                                   "git"
                                   "icecast"
                                   "lame"
                                   "mpd"
                                   "nginx"
                                   "postgresql-contrib"
                                   "postgresql-server"
                                   "rspamd"
                                   "rsync"
                                   "texinfo"
                                   "texlive_texmf-full")))

(resource 'host "reed.kmx.io"
          ;; rc
          (static-file "/etc/rc.conf.local"
                       :owner "root"
                       :group "wheel"
                       :mode #o600)
          (static-file "/etc/hostname.em0"
                       :owner "root"
                       :group "wheel"
                       :mode #o600)
          (static-file "/etc/hostname.em1"
                       :owner "root"
                       :group "wheel"
                       :mode #o600)
          (static-file "/var/icecast/icecast.xml"
                       :owner "root"
                       :group "_icecast"
                       :mode #o640
                       :after #'reload-icecast)
          (static-file "/etc/mpd.conf"
                       :owner "root"
                       :group "wheel"
                       :mode #o640
                       :after #'reload-mpd)
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
          #.(include "user/dx/x240")
;;          #.(include "user/dx/forward-email")
;;          #.(include "user/root/forward-email")
;;          #.(include "user/judy")
          #.(include "user/vrizzt")
          ;; git
          #.(include "git")
          ;; Nginx
          #.(include "nginx")
          ;; PostgreSQL
          #.(include "postgresql")
          ;; Web services
          #.(include "git.kmx.io/production")
          #.(include "git.kmx.io/test")
          #.(include "mail.kmx.io/production")
          #.(include "metrics.kmx.io/production")
          #.(include "skills.kmx.io/production")
          #.(include "www.kmx.io/production")
          ;; reed.kmx.io
          (resource 'directory "/var/www/reed.kmx.io"
                    :owner "root"
                    :group "www"
                    :mode #o755
                    :ensure :present)
          (static-file "/etc/nginx/available/reed.kmx.io.conf"
                       :owner "root"
                       :group "wheel"
                       :mode #o644))

