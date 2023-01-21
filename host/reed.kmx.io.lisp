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
          #.(include "OpenBSD/host")
          ;; etc
          (static-etc-file "/etc/hostname.em0")
          (static-etc-file "/etc/hostname.em1")
          (static-etc-file "/etc/mpd.conf"
                           :after #'reload-mpd)
          (static-etc-file "/var/icecast/icecast.xml"
                           :after #'reload-icecast)
	  ;; transmission
	  (resource 'directory "/home/transmission"
		    :owner "_transmission"
		    :group "_transmission"
		    :mode #o770
		    :ensure :present)
	  (resource 'directory "/var/transmission"
		    :owner "root"
		    :group "_transmission"
		    :mode #o750
		    :ensure :present)
	  (resource 'directory "/var/transmission/.config"
		    :owner "root"
		    :group "_transmission"
		    :mode #o750
		    :ensure :present)
	  (resource 'directory "/var/transmission/.config/transmission-daemon"
		    :owner "root"
		    :group "_transmission"
		    :mode #o750
		    :ensure :present)
	  (static-file "/var/transmission/.config/transmission-daemon/settings.json"
		       :owner "root"
		       :group "_transmission"
		       :mode #o640
		       :ensure :present
		       :after #'reload-transmission_daemon)
          ;; users
          #.(include "user/dx")
          #.(include "user/dx/x240")
          #.(include "user/dx/forward-email")
          #.(include "user/root/forward-email")
          #.(include "user/npm")
;;          #.(include "user/judy")
          #.(include "user/vrizzt")
          ;; git
          #.(include "git")
          ;; PostgreSQL
          #.(include "postgresql")
          ;; Nginx
          #.(include "nginx"))

