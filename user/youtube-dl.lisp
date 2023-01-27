;; youtube-dl
(resource 'group "youtube-dl"
          :gid 2000
          :ensure :present)
(resource 'user "youtube-dl"
          :uid 2000
          :gid 2000
          :home (homedir "youtube-dl")
          :ensure :present)
(resource 'directory (homedir "youtube-dl")
          :owner "youtube-dl"
          :group "youtube-dl"
          :mode #o755
          :ensure :present)
(resource 'directory (str (homedir "youtube-dl") "/bin")
          :owner "youtube-dl"
          :group "youtube-dl"
          :mode #o755
          :ensure :present)
