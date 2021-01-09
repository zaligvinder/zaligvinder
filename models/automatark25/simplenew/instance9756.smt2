(declare-const X String)
; /_X(86|64)&a4=/P
(assert (str.in.re X (re.++ (str.to.re "/_X") (re.union (str.to.re "86") (str.to.re "64")) (str.to.re "&a4=/P\x0a"))))
(check-sat)
