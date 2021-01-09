(declare-const X String)
; SpyAgent\s+daosearch\x2Ecom\s+X-Mailer\x3a\s+zmnjgmomgbdz\x2fzzmw\.gzt
(assert (not (str.in.re X (re.++ (str.to.re "SpyAgent") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "daosearch.com") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "X-Mailer:\x13") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "zmnjgmomgbdz/zzmw.gzt\x0a")))))
(check-sat)
