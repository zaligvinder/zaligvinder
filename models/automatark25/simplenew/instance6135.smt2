(declare-const X String)
; User-Agent\x3AX-Mailer\x3aHWAEHost\x3AHost\x3AHost\x3aStableUser-Agent\x3AUser-Agent\x3Awww\x2enavisearch\x2enet
(assert (not (str.in.re X (str.to.re "User-Agent:X-Mailer:\x13HWAEHost:Host:Host:StableUser-Agent:User-Agent:www.navisearch.net\x0a"))))
(check-sat)
