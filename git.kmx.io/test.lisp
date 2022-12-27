(resource 'group "git_test"
          :gid 7002
          :ensure :present)
(resource 'user "git_test"
          :uid 7002
          :gid 7002
          :home (homedir "git_test")
          :shell "/usr/local/bin/git-auth"
          :ensure :present)
(resource 'directory "/var/www/git_test.kmx.io"
          :owner "git_test"
          :group "www"
          :mode #o755
          :ensure :present)
(resource 'file "/etc/nginx/available/git_test.kmx.io.conf"
          :owner "root"
          :group "wheel"
          :mode #o644
          :content (read-file "git.kmx.io/etc/nginx/available/git_test.kmx.io.conf"))
(resource 'file "/etc/rc.d/git_test_kmx_io"
          :owner "root"
          :group "wheel"
          :mode #o755
          :content (read-file "git.kmx.io/etc/rc.d/git_test_kmx_io"))
