(declare-const X String)
; www\u{2E}pcsentinelsoftware\u{2E}com
(assert (str.in_re X (str.to_re "www.pcsentinelsoftware.com\u{a}")))
(check-sat)
