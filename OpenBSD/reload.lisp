(defun reload-dhcpd (resource os)
  (declare (ignore resource os))
  (run-as-root "/etc/rc.d/dhcpd restart"))

(defun reload-icecast (resource os)
  (declare (ignore resource os))
  (run-as-root "/etc/rc.d/icecast restart"))

(defun reload-iked (resource os)
  (declare (ignore resource os))
  (run-as-root "/etc/rc.d/iked reload"))

(defun reload-mpd (resource os)
  (declare (ignore resource os))
  (run-as-root "/etc/rc.d/mpd restart"))

(defun reload-pf.conf (resource os)
  (declare (ignore resource os))
  (run-as-root "pfctl -f /etc/pf.conf"))

(defun reload-postgresql (resource os)
  (declare (ignore resource os))
  (run-as-root "/etc/rc.d/postgresql reload"))

(defun reload-sshd (resource os)
  (declare (ignore resource os))
  (run-as-root "/etc/rc.d/sshd reload"))
