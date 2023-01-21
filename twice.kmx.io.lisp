#!/usr/local/bin/cl-unix-cybernetics --script

(in-package :cl-unix-cybernetics-user)

(load "OpenBSD/defs")

#.(include "host/twice.kmx.io")

(with-host "twice.kmx.io"
  (sync *host*))
