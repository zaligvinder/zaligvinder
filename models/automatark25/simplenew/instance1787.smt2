(declare-const X String)
; shprrprt-cs-Pre\x2Fta\x2FNEWS\x2F
(assert (str.in.re X (str.to.re "shprrprt-cs-\x13Pre/ta/NEWS/\x0a")))
(check-sat)
