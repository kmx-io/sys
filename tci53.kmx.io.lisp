#!/usr/local/bin/cl-unix-cybernetics --script

;;(asdf:load-system :cl-unix-cybernetics)

(in-package :cl-unix-cybernetics-user)

#.(include "host/tci53.kmx.io")

(with-host "tci53.kmx.io"
  (sync *host*))
