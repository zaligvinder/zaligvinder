(declare-const X String)
; WindowsAcmeReferer\u{3A}
(assert (not (str.in_re X (str.to_re "WindowsAcmeReferer:\u{a}"))))
(check-sat)
