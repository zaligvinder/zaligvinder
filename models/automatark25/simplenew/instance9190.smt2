(declare-const X String)
; areKeyloggerver=www\u{2E}snap\u{2E}com
(assert (not (str.in_re X (str.to_re "areKeyloggerver=www.snap.com\u{a}"))))
(check-sat)
