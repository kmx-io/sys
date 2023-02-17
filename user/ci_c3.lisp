;; CI
(resource 'group "ci_c3"
          :gid 7010
          :ensure :present)
(resource 'user "ci_c3"
          :uid 7010
          :gid 7010
          :home (homedir "ci_c3")
          :ensure :present)
(resource 'directory (homedir "ci_c3")
          :owner "ci_c3"
          :group "ci_c3"
          :mode #o750
          :ensure :present)
(resource 'directory (str (homedir "ci_c3") "/.ssh")
          :owner "ci_c3"
          :group "ci_c3"
          :mode #o700
          :ensure :present)
