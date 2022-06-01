(declare-const X String)
; BysooTBUser-Agent\u{3A}
(assert (not (str.in_re X (str.to_re "BysooTBUser-Agent:\u{a}"))))
; User-Agent\u{3A}ChildWebGuardianHXDownloadX-Mailer\u{3a}
(assert (str.in_re X (str.to_re "User-Agent:ChildWebGuardianHXDownloadX-Mailer:\u{13}\u{a}")))
(check-sat)
