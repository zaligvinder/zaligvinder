(declare-const X String)
; ^5[1-5][0-9]{14}$
(assert (str.in.re X (re.++ (str.to.re "5") (re.range "1" "5") ((_ re.loop 14 14) (re.range "0" "9")) (str.to.re "\x0a"))))
; User-Agent\x3AX-Mailer\x3aHWAEHost\x3AHost\x3AHost\x3aStableUser-Agent\x3AUser-Agent\x3Awww\x2enavisearch\x2enet
(assert (not (str.in.re X (str.to.re "User-Agent:X-Mailer:\x13HWAEHost:Host:Host:StableUser-Agent:User-Agent:www.navisearch.net\x0a"))))
(check-sat)
