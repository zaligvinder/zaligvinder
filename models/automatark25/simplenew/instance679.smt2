(declare-const X String)
; 195\.225\.\<title\>Actual
(assert (str.in.re X (str.to.re "195.225.<title>Actual\x0a")))
(check-sat)
