(declare-const X String)
; .*\$AVE|\$ave.*
(assert (str.in_re X (re.union (re.++ (re.* re.allchar) (str.to_re "$AVE")) (re.++ (str.to_re "$ave") (re.* re.allchar) (str.to_re "\u{a}")))))
(check-sat)
