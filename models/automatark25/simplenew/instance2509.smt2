(declare-const X String)
; ^((l((ll)|(b)|(bb)|(bbb)))|(bb*))$
(assert (not (str.in_re X (re.++ (re.union (re.++ (str.to_re "l") (re.union (str.to_re "ll") (str.to_re "b") (str.to_re "bb") (str.to_re "bbb"))) (re.++ (str.to_re "b") (re.* (str.to_re "b")))) (str.to_re "\u{a}")))))
(check-sat)
