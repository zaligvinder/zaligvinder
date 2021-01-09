(declare-const X String)
; User-Agent\x3AHost\x3a\x22The
(assert (str.in.re X (str.to.re "User-Agent:Host:\x22The\x0a")))
(check-sat)
