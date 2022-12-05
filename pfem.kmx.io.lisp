#!/usr/local/bin/cl-unix-cybernetics --script

(in-package :cl-unix-cybernetics-user)

(load "OpenBSD/reload.lisp")

#.(include "host/pfem.kmx.io")

(with-host "pfem.kmx.io"
  (sync *host*))
