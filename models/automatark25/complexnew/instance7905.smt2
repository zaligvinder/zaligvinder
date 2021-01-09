(declare-const X String)
; logs\d+X-Mailer\x3a\d+url=enews\x2Eearthlink\x2Enet
(assert (str.in.re X (re.++ (str.to.re "logs") (re.+ (re.range "0" "9")) (str.to.re "X-Mailer:\x13") (re.+ (re.range "0" "9")) (str.to.re "url=enews.earthlink.net\x0a"))))
; /\x2erm([\?\x5c\x2f]|$)/smiU
(assert (not (str.in.re X (re.++ (str.to.re "/.rm") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a")))))
(check-sat)
