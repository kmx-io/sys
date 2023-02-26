#.(include "user/ci_c3")
(resource 'file (str (homedir "ci_c3") "/.ssh/authorized_keys")
          :owner "ci_c3"
          :group "ci_c3"
          :mode #o600
          :content (read-file "ci/c3/host/home/ci/.ssh/authorized_keys"))
