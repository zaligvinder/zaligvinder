(declare-const X String)
; .*\$AVE|\$ave.*
(assert (str.in.re X (re.union (re.++ (re.* re.allchar) (str.to.re "$AVE")) (re.++ (str.to.re "$ave") (re.* re.allchar) (str.to.re "\x0a")))))
(check-sat)
