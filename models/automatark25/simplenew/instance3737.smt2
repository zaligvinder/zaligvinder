(declare-const X String)
; Agentppcdomain\u{2E}co\u{2E}ukWordSpy\-Locked
(assert (not (str.in_re X (str.to_re "Agentppcdomain.co.ukWordSpy-Locked\u{a}"))))
(check-sat)
