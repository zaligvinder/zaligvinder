(declare-const X String)
; YAHOO.*Host\x3A.*\x2Fcs\x2Fpop4\x2F
(assert (not (str.in.re X (re.++ (str.to.re "YAHOO") (re.* re.allchar) (str.to.re "Host:") (re.* re.allchar) (str.to.re "/cs/pop4/\x0a")))))
(check-sat)
