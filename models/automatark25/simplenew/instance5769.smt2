(declare-const X String)
; is\u{7D}\u{7B}Port\u{3A}\u{7D}\u{7B}User\u{3A}
(assert (not (str.in_re X (str.to_re "is}{Port:}{User:\u{a}"))))
(check-sat)
