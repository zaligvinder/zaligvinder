(declare-const X String)
; daosearch\u{2E}comSubject\u{3A}
(assert (not (str.in_re X (str.to_re "daosearch.comSubject:\u{a}"))))
(check-sat)
