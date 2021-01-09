(declare-const X String)
; tv\x2E180solutions\x2EcomGirlFriendHost\x3A
(assert (not (str.in.re X (str.to.re "tv.180solutions.comGirlFriendHost:\x0a"))))
(check-sat)
