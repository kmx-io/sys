(static-file "/etc/mpd.conf"
             :owner "root"
             :group "wheel"
             :mode #o640
             :after #'reload-mpd)
