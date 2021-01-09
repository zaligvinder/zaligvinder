(declare-const X String)
; IndyHost\x3AGirlFriendReferer\x3A
(assert (not (str.in.re X (str.to.re "IndyHost:GirlFriendReferer:\x0a"))))
(check-sat)
