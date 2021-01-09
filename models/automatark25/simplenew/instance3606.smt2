(declare-const X String)
; www\s+X-Mailer\x3aSpyBuddyUser-Agent\x3A
(assert (str.in.re X (re.++ (str.to.re "www") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "X-Mailer:\x13SpyBuddyUser-Agent:\x0a"))))
(check-sat)
