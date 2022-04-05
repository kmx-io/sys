(resource 'group "exwm_smtp"
          :gid 7900
          :ensure :present)
(resource 'user "exwm_smtp"
          :uid 7900
          :gid 7900
          :home "/home/exwm_smtp"
          :ensure :present)
(resource 'directory "/home/exwm_smtp"
          :owner "exwm_smtp"
          :group "exwm_smtp"
          :mode #o750)
(resource 'file "/etc/rc.d/exwm_smtp"
          :owner "root"
          :group "wheel"
          :mode #o755
          :content (read-file "mail.kmx.io/etc/rc.d/exwm_smtp"))

(resource 'group "exwm_web"
          :gid 3009
          :ensure :present)
(resource 'user "exwm_web"
          :uid 3009
          :gid 3009
          :home "/home/exwm_web"
          :ensure :present)
(resource 'directory "/var/www/mail.kmx.io"
          :owner "exwm_web"
          :group "www"
          :mode #o755
          :ensure :present)
(resource 'directory "/var/www/mail.kmx.io/.well-known"
          :owner "letsencrypt"
          :group "www"
          :mode #o755
          :ensure :present)
(resource 'file "/etc/nginx/available/mail.kmx.io.conf"
          :owner "root"
          :group "wheel"
          :mode #o644
          :content (read-file "mail.kmx.io/etc/nginx/available/mail.kmx.io.conf"))
(resource 'file "/etc/rc.d/mail_kmx_io"
          :owner "root"
          :group "wheel"
          :mode #o755
          :content (read-file "mail.kmx.io/etc/rc.d/mail_kmx_io"))
