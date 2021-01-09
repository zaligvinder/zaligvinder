(declare-const X String)
; S\x3aUsers\x5cIterenetSend=User-Agent\x3A
(assert (not (str.in.re X (str.to.re "S:Users\x5cIterenetSend=User-Agent:\x0a"))))
(check-sat)
