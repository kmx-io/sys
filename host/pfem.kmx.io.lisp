(setq *host*
      (resource 'host "pfem.kmx.io"
                :user "root"
                :hostname "pfem"
                :packages '("nginx")))

(resource 'host "pfem.kmx.io"
          #.(include "OpenBSD/host")
          ;; rc
          (static-etc-file "/etc/hostname.em0")
          (static-etc-file "/etc/hostname.em1")
          (static-etc-file "/etc/hostname.em2")
          (static-etc-file "/etc/hostname.re0")
          (static-etc-file "/etc/hostname.re1")
          (static-etc-file "/etc/hostname.re2")
          (static-etc-file "/etc/dhcpd.conf"
                           :after #'reload-dhcpd)
          (static-etc-file "/etc/unbound.conf")
          (static-etc-file "/etc/hosts"
                           :mode #o644)
          (static-etc-file "/etc/login.conf")
          ;; users
          #.(include "user/dx")
          #.(include "user/dx/forward-email")
          #.(include "user/root/forward-email")
          ;; nginx
          #.(include "nginx")
          #.(include "metrics.kmx.io/production")
          ;; ci
          #.(include "ci/mux"))
