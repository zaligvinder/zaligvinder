(declare-const X String)
; Pass-OnthecontainsUser-Agent\x3A
(assert (str.in.re X (str.to.re "Pass-OnthecontainsUser-Agent:\x0a")))
(check-sat)
