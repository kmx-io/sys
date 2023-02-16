(setq *host*
      (resource 'host "tci53.kmx.io"
                :user "root"
                :hostname "tci53"))

(resource 'host "tci53.kmx.io"
          ;; users
          #.(include "user/dx")
          #.(include "user/dx/forward-email")
          #.(include "user/root/forward-email")
          ;; ci
          #.(include "ci/host"))
