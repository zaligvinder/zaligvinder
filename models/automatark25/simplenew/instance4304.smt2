(declare-const X String)
; A-311Host\u{3A}lnzzlnbk\u{2f}pkrm\.finSubject\u{3a}
(assert (str.in_re X (str.to_re "A-311Host:lnzzlnbk/pkrm.finSubject:\u{a}")))
(check-sat)
