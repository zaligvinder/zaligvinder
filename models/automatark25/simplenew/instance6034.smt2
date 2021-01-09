(declare-const X String)
; sponsor2\.ucmore\.comUser-Agent\x3AUser-Agent\x3A
(assert (str.in.re X (str.to.re "sponsor2.ucmore.comUser-Agent:User-Agent:\x0a")))
(check-sat)
