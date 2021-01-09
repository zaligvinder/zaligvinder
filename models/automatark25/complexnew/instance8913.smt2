(declare-const X String)
; ^(.*)
(assert (not (str.in.re X (re.++ (re.* re.allchar) (str.to.re "\x0a")))))
; ^([0-9][,]?)*([0-9][0-9])$
(assert (not (str.in.re X (re.++ (re.* (re.++ (re.range "0" "9") (re.opt (str.to.re ",")))) (str.to.re "\x0a") (re.range "0" "9") (re.range "0" "9")))))
(check-sat)
