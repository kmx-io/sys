#!/usr/local/bin/cl-unix-cybernetics --script

(in-package :cl-unix-cybernetics-user)

#.(include "host/tci52.kmx.io")

(with-host "tci52.kmx.io"
  (sync *host*))
