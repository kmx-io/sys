#!/usr/local/bin/cl-unix-cybernetics --script

(in-package :cl-unix-cybernetics-user)

(load "OpenBSD/reload.lisp")

#.(include "host/vulon.kmx.io")

(with-host "vulon.kmx.io"
  (sync *host*))
