(declare-const X String)
; IndyHost\u{3A}GirlFriendReferer\u{3A}
(assert (str.in_re X (str.to_re "IndyHost:GirlFriendReferer:\u{a}")))
(check-sat)
