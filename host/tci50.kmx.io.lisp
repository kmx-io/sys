(setq *host*
      (resource 'host "tci50.kmx.io"
                :user "root"
                :hostname "tci50"))

(resource 'host "tci50.kmx.io"
          ;; users
          #.(include "user/dx")
          #.(include "user/dx/forward-email")
          #.(include "user/root/forward-email")
          ;; ci
          #.(include "ci/host"))
