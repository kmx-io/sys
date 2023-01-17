#!/usr/local/bin/cl-unix-cybernetics --script

(in-package :cl-unix-cybernetics-user)

(load "OpenBSD/defs")

#.(include "host/pfem.kmx.io")

(with-host "pfem.kmx.io"
  (sync *host*))
