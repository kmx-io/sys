#!/usr/local/bin/cl-unix-cybernetics --script

(in-package :cl-unix-cybernetics-user)

#.(include "host/tci51.kmx.io")

(with-host "tci51.kmx.io"
  (sync *host*))
