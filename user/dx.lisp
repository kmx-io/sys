;; Thomas de Grivel (kmx.io)
(resource 'group "dx"
          :gid 19256
          :ensure :present)
(resource 'user "dx"
          :uid 19256
          :gid 19256
          :home (homedir "dx")
          :ensure :present)
