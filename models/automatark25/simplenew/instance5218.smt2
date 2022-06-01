(declare-const X String)
; Prodaosearch\u{2E}comReferer\u{3A}007User-Agent\u{3A}
(assert (str.in_re X (str.to_re "Prodaosearch.comReferer:007User-Agent:\u{a}")))
(check-sat)
