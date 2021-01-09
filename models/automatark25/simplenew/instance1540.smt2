(declare-const X String)
; GREATDriplineisUser-Agent\x3Alogs===========\x3E
(assert (not (str.in.re X (str.to.re "GREATDriplineisUser-Agent:logs===========>\x0a"))))
(check-sat)
