#!/usr/local/bin/cl-unix-cybernetics --script

(in-package :cl-unix-cybernetics-user)

(load "OpenBSD/reload.lisp")

#.(include "host/bim.kmx.io")

(with-host "bim.kmx.io"
  (sync *host*))
