(resource 'group "letsencrypt"
          :gid 7100
          :ensure :present)
(resource 'user "letsencrypt"
          :uid 7100
          :gid 7100
          :home "/home/letsencrypt"
          :shell "/bin/ksh"
          :ensure :present)
(resource 'directory "/home/letsencrypt"
          :owner "root"
          :group "wheel"
          :mode #o750
          :ensure :present)
(resource 'directory "/home/letsencrypt/config"
          :owner "root"
          :group "wheel"
          :mode #o750
          :ensure :present)
(resource 'directory "/home/letsencrypt/log"
          :owner "root"
          :group "wheel"
          :mode #o750
          :ensure :present)
(resource 'directory "/home/letsencrypt/work"
          :owner "root"
          :group "wheel"
          :mode #o750
          :ensure :present)
(static-file "/home/letsencrypt/domains"
             :owner "root"
             :group "wheel"
             :mode #o640)
(resource 'file "/home/letsencrypt/certbot.sh"
          :owner "root"
          :group "wheel"
          :mode #o750
          :content (read-file "letsencrypt/home/letsencrypt/certbot.sh"))
(resource 'file "/root/certbot.sh"
          :owner "root"
          :group "wheel"
          :mode #o750
          :content (read-file "letsencrypt/root/certbot.sh"))
