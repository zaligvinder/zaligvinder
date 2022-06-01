(declare-const X String)
; Subject\u{3A}linkautomatici\u{2E}comReferer\u{3A}www\u{2E}searchreslt\u{2E}com
(assert (not (str.in_re X (str.to_re "Subject:linkautomatici.comReferer:www.searchreslt.com\u{a}"))))
(check-sat)
