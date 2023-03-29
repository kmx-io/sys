#!/usr/local/bin/cl-unix-cybernetics --script

(asdf:load-system :cl-unix-cybernetics)

(in-package :cl-unix-cybernetics-user)

(load "OpenBSD/defs")

#.(include "host/bim.kmx.io")

(with-host "bim.kmx.io"
  (sync *host*))
