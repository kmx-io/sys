;; CI
(resource 'group "ci"
          :gid 7010
          :ensure :present)
(resource 'user "ci"
          :uid 7010
          :gid 7010
          :home (homedir "ci")
          :ensure :present)
