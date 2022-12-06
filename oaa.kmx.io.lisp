#!/usr/local/bin/cl-unix-cybernetics --script

(in-package :cl-unix-cybernetics-user)

(load "OpenBSD/reload.lisp")

#.(include "host/oaa.kmx.io")

(with-host "oaa.kmx.io"
  (sync *host*))
