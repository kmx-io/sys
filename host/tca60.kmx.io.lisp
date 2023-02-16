(setq *host*
      (resource 'host "tca60.kmx.io"
                :user "root"
                :hostname "tca60"))

(resource 'host "tca60.kmx.io"
          ;; users
          #.(include "user/dx")
          #.(include "user/dx/forward-email")
          #.(include "user/root/forward-email")
          ;; ci
          #.(include "ci/host"))
