;; No Glitch SAS (skeem.io)
(resource 'group "noglitch"
          :gid 3008
          :ensure :present)
(resource 'user "noglitch"
          :uid 3008
          :gid 3008
          :home "/home/noglitch"
          :ensure :present)
