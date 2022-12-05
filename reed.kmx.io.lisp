#!/usr/local/bin/cl-unix-cybernetics --script

(in-package :cl-unix-cybernetics-user)

(load "OpenBSD/reload.lisp")

#.(include "host/reed.kmx.io")

(with-host "reed.kmx.io"
  (sync *host*))
