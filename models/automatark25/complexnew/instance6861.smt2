(declare-const X String)
; /filename=[^\n]*\x2eht3/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".ht3/i\x0a")))))
; ref\x3D\x25user\x5Fid\s+X-Mailer\x3aSpyBuddyUser-Agent\x3A
(assert (not (str.in.re X (re.++ (str.to.re "ref=%user_id") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "X-Mailer:\x13SpyBuddyUser-Agent:\x0a")))))
; www\x2Eonetoolbar\x2Ecomcommunity
(assert (str.in.re X (str.to.re "www.onetoolbar.comcommunity\x0a")))
(check-sat)
