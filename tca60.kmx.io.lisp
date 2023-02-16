#!/usr/local/bin/cl-unix-cybernetics --script

(asdf:load-system :cl-unix-cybernetics)

(in-package :cl-unix-cybernetics-user)

#.(include "host/tca60.kmx.io")

(with-host "tca60.kmx.io"
  (run "export PATH=\"$PATH:/usr/sbin\"")
  (sync *host*))
