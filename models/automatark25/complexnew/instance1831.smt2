(declare-const X String)
; Host\x3asearchresltwww\x2Ewordiq\x2Ecomwww2\x2einstantbuzz\x2ecom
(assert (str.in.re X (str.to.re "Host:searchresltwww.wordiq.com\x1bwww2.instantbuzz.com\x0a")))
; ref\x3D\x25user\x5Fid\s+X-Mailer\x3aSpyBuddyUser-Agent\x3A
(assert (not (str.in.re X (re.++ (str.to.re "ref=%user_id") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "X-Mailer:\x13SpyBuddyUser-Agent:\x0a")))))
; updates\x5D\x2520\x5BPort_NETObserve
(assert (not (str.in.re X (str.to.re "updates]%20[Port_NETObserve\x0a"))))
(check-sat)
