(declare-const X String)
; Theef2Host\u{3A}WordcommunityUser-Agent\u{3A}Host\u{3A}TPSystemHost\u{3A}Host\u{3A}Pro
(assert (str.in_re X (str.to_re "Theef2Host:WordcommunityUser-Agent:Host:TPSystemHost:Host:Pro\u{a}")))
(check-sat)
