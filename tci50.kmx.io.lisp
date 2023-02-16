#!/usr/local/bin/cl-unix-cybernetics --script

(in-package :cl-unix-cybernetics-user)

#.(include "host/tci50.kmx.io")

(with-host "tci50.kmx.io"
  (sync *host*))
