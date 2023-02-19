(in-package :cl-unix-cybernetics-user)

(load "FreeBSD/reload")

(defun static-etc-file (name &rest properties)
  (apply #'static-file
         name
         :owner "root"
         :group "wheel"
         :mode #o600
         properties))
