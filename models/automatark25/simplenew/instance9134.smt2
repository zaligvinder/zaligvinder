(declare-const X String)
; mywayHost\u{3A}www\u{2E}eblocs\u{2E}com
(assert (not (str.in_re X (str.to_re "mywayHost:www.eblocs.com\u{1b}\u{a}"))))
(check-sat)
