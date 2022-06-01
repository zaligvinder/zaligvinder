(declare-const X String)
; aboutKeyloggeras\u{2E}starware\u{2E}comProtoHost\u{3a}\.asp\?brand=
(assert (not (str.in_re X (str.to_re "aboutKeyloggeras.starware.comProtoHost:.asp?brand=\u{a}"))))
(check-sat)
