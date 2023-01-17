;; rc

(static-etc-file "/etc/rc.conf.local")

;; pf

#.(include "pf")

;; sshd

#.(include "sshd")

;; genpassword

(resource 'file "/usr/local/bin/genpassword"
          :owner "root"
          :group "wheel"
          :mode #o755
          :content (read-file "OpenBSD/usr/local/bin/genpassword"))

;; backup

(resource 'file "/usr/local/bin/day"
          :owner "root"
          :group "wheel"
          :mode #o755
          :content (read-file "OpenBSD/usr/local/bin/day"))

(resource 'file "/usr/local/bin/hanoi"
          :owner "root"
          :group "wheel"
          :mode #o755
          :content (read-file "OpenBSD/usr/local/bin/hanoi"))
