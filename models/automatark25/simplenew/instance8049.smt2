(declare-const X String)
; tv\u{2E}180solutions\u{2E}comGirlFriendHost\u{3A}
(assert (not (str.in_re X (str.to_re "tv.180solutions.comGirlFriendHost:\u{a}"))))
(check-sat)
