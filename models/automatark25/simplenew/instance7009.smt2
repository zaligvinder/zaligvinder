(declare-const X String)
; [+-](^0.*)
(assert (not (str.in.re X (re.++ (re.union (str.to.re "+") (str.to.re "-")) (str.to.re "\x0a0") (re.* re.allchar)))))
(check-sat)
