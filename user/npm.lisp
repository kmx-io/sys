;; node package manager
(resource 'group "npm"
          :gid 7170
          :ensure :present)
(resource 'user "npm"
          :uid 7170
          :gid 7170
          :home (homedir "npm")
          :ensure :present)
(resource 'directory (homedir "npm")
          :owner "npm"
          :group "npm"
          :mode #o755
          :ensure :present)
(resource 'directory (str (homedir "npm") "/npm")
          :owner "npm"
          :group "npm"
          :mode #o755
          :ensure :present)
(resource 'file (str (homedir "npm") "/.npmrc")
          :owner "npm"
          :group "npm"
          :mode #o644
          :content "prefix=/home/npm/npm
")
