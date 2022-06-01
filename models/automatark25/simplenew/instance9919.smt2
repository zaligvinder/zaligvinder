(declare-const X String)
; PALTALKSubject\u{3A}\u{7D}\u{7B}User\u{3A}
(assert (not (str.in_re X (str.to_re "PALTALKSubject:}{User:\u{a}"))))
(check-sat)
