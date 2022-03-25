(defvar *forward-email* "dx@kmx.io
")
(resource 'file "/home/dx/.forward"
          :owner "dx"
          :group "dx"
          :mode #o640
          :content *forward-email*)
(resource 'file "/root/.forward"
          :owner "root"
          :group "wheel"
          :mode #o640
          :content *forward-email*)
