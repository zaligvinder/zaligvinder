(declare-const X String)
; ^\d*$
(assert (not (str.in.re X (re.++ (re.* (re.range "0" "9")) (str.to.re "\x0a")))))
; shprrprt-cs-Pre\x2Fta\x2FNEWS\x2F
(assert (str.in.re X (str.to.re "shprrprt-cs-\x13Pre/ta/NEWS/\x0a")))
(check-sat)
