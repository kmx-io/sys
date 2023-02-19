(in-package :cl-unix-cybernetics-user)

(defun reload-nginx (resource os)
  (declare (ignore resource os))
  (run-as-root "/usr/local/etc/rc.d/nginx restart"))

(defun reload-postgresql (resource os)
  (declare (ignore resource os))
  (run-as-root "/usr/local/etc/rc.d/postgresql restart"))
