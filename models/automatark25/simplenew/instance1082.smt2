(declare-const X String)
; ^((l((ll)|(b)|(bb)|(bbb)))|(bb*))$
(assert (str.in.re X (re.++ (re.union (re.++ (str.to.re "l") (re.union (str.to.re "ll") (str.to.re "b") (str.to.re "bb") (str.to.re "bbb"))) (re.++ (str.to.re "b") (re.* (str.to.re "b")))) (str.to.re "\x0a"))))
(check-sat)
