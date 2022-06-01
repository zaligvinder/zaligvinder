(declare-const X String)
; S\u{3a}Users\u{5c}IterenetSend=User-Agent\u{3A}
(assert (not (str.in_re X (str.to_re "S:Users\u{5c}IterenetSend=User-Agent:\u{a}"))))
(check-sat)
