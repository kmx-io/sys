(static-file "/var/icecast/icecast.xml"
             :owner "root"
             :group "_icecast"
             :mode #o640
             :after #'reload-icecast)
