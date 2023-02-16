#.(include "user/ci")
(resource 'directory (homedir "ci")
          :owner "ci"
          :group "ci"
          :mode #o750
          :ensure :present)
(resource 'directory (str (homedir "ci") "/.ssh")
          :owner "ci"
          :group "ci"
          :mode #o700
          :ensure :present)
(static-file (str (homedir "ci") "/.ssh/authorized_keys")
             :owner "ci"
             :group "ci"
             :mode #o600)
