(declare-const X String)
; Pass-OnthecontainsUser-Agent\u{3A}
(assert (not (str.in_re X (str.to_re "Pass-OnthecontainsUser-Agent:\u{a}"))))
(check-sat)
