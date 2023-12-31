(resource 'group "git"
          :gid 7000
          :ensure :present)
(resource 'user "git"
          :uid 7000
          :gid 7000
          :home (homedir "git")
          :shell "/usr/local/bin/git-auth"
          :ensure :present)
(resource 'directory "/etc/git"
          :owner "root"
          :group "git"
          :mode #o770
          :ensure :present)
(resource 'file "/etc/git/auth.conf"
          :owner "git"
          :group "git"
          :mode #o640
          :ensure :present)
(resource 'directory (homedir "git")
          :owner "git"
          :group "git"
          :mode #o750
          :ensure :present)
(resource 'directory (str (homedir "git") "/.ssh")
          :owner "git"
          :group "git"
          :mode #o700
          :ensure :present)
(resource 'file (str (homedir "git") "/.ssh/authorized_keys")
          :owner "git"
          :group "git"
          :mode #o600)
(resource 'group "git-backup"
          :gid 7001
          :ensure :present)
(resource 'user "git-backup"
          :uid 7001
          :gid 7001
          :groups '("git-backup" "git")
          :home (homedir "git-backup")
          :shell "/bin/ksh"
          :ensure :present)
(resource 'directory (homedir "git-backup")
          :owner "git-backup"
          :group "git-backup"
          :mode #o700
          :ensure :present)
(resource 'directory (str (homedir "git-backup") "/.ssh")
          :owner "git-backup"
          :group "git-backup"
          :mode #o700
          :ensure :present)
(resource 'file (str (homedir "git-backup") "/.ssh/authorized_keys")
          :owner "root"
          :group "git-backup"
          :mode #o640
          :content (read-file "git/home/git-backup/.ssh/authorized_keys"))
(resource 'directory (str (homedir "git-backup") "/.bin")
          :owner "git-backup"
          :group "git-backup"
          :mode #o700
          :ensure :present)
(resource 'file (str (homedir "git-backup") "/.bin/backup")
          :owner "root"
          :group "git-backup"
          :mode #o750
          :content (read-file "git/home/git-backup/.bin/backup"))
