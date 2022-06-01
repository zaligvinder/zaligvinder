(declare-const X String)
; www\u{2E}onetoolbar\u{2E}comcommunity
(assert (str.in_re X (str.to_re "www.onetoolbar.comcommunity\u{a}")))
(check-sat)
