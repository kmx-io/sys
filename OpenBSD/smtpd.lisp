(static-etc-file "/etc/mail/smtpd.conf")

(resource 'file "/etc/mail/dkim/private/privkey.pem"
          :owner "root"
          :group "_rspamd"
          :mode #o640)

(resource 'file "/etc/mail/dkim/pubkey.pem"
          :owner "root"
          :group "_rspamd"
          :mode #o640)

(static-etc-file "/etc/rspamd/local.d/dkim_signing.conf")

(static-etc-file "/etc/rspamd/local.d/multimap.conf")

(static-etc-file "/etc/rspamd/local.d/whitelist.sender.domain.map")
