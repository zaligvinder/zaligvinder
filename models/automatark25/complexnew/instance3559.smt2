(declare-const X String)
; BysooTBUser-Agent\x3A
(assert (not (str.in.re X (str.to.re "BysooTBUser-Agent:\x0a"))))
; User-Agent\x3AChildWebGuardianHXDownloadX-Mailer\x3a
(assert (str.in.re X (str.to.re "User-Agent:ChildWebGuardianHXDownloadX-Mailer:\x13\x0a")))
(check-sat)
