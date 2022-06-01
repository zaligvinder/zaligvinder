(declare-const X String)
; PORT\u{3D}internalcyber@yahoo\u{2E}comHeaders
(assert (str.in_re X (str.to_re "PORT=internalcyber@yahoo.comHeaders\u{a}")))
(check-sat)
