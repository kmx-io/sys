(setq *host*
      (resource 'host "tci52.kmx.io"
                :user "root"
                :hostname "tci52"))

(resource 'host "tci52.kmx.io"
          ;; users
          #.(include "user/dx")
          #.(include "user/dx/forward-email")
          #.(include "user/root/forward-email")
          ;; ci
          #.(include "ci/host"))
