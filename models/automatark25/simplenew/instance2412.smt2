(declare-const X String)
; (a|A)
(assert (not (str.in_re X (re.++ (re.union (str.to_re "a") (str.to_re "A")) (str.to_re "\u{a}")))))
(check-sat)
