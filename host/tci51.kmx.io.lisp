(setq *host*
      (resource 'host "tci51.kmx.io"
                :user "root"
                :hostname "tci51"))

(resource 'host "tci51.kmx.io"
          ;; users
          #.(include "user/dx")
          #.(include "user/dx/forward-email")
          #.(include "user/root/forward-email")
          ;; ci
          #.(include "ci/host"))
