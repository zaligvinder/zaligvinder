(declare-const X String)
; Host\x3Aact=Host\x3aUser-Agent\x3AUser-Agent\x3ALiteselect\x2FGet
(assert (not (str.in.re X (str.to.re "Host:act=Host:User-Agent:User-Agent:Liteselect/Get\x0a"))))
(check-sat)
