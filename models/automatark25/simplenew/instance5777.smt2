(declare-const X String)
; www\u{2E}serverlogic3\u{2E}com
(assert (not (str.in_re X (str.to_re "www.serverlogic3.com\u{a}"))))
(check-sat)
