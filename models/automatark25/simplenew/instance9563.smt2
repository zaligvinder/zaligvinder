(declare-const X String)
; AID\u{2F}Host\u{3a}Hourskl\u{2E}search\u{2E}need2find\u{2E}comHost\u{3a}Host\u{3A}
(assert (str.in_re X (str.to_re "AID/Host:Hourskl.search.need2find.comHost:Host:\u{a}")))
(check-sat)
