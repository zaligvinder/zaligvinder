(declare-const X String)
; versionIDENTIFYstarted\u{2E}User-Agent\u{3A}
(assert (not (str.in_re X (str.to_re "versionIDENTIFYstarted.User-Agent:\u{a}"))))
(check-sat)
