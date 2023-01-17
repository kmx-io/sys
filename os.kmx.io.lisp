#!/usr/local/bin/cl-unix-cybernetics --script

(in-package :cl-unix-cybernetics-user)

(load "OpenBSD/defs")

#.(include "host/os.kmx.io")

(with-host "os.kmx.io"
  (sync *host*))
