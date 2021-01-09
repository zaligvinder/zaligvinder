(declare-const X String)
; ^\d* \d*\/{1}\d*$|^\d*$
(assert (not (str.in.re X (re.union (re.++ (re.* (re.range "0" "9")) (str.to.re " ") (re.* (re.range "0" "9")) ((_ re.loop 1 1) (str.to.re "/")) (re.* (re.range "0" "9"))) (re.++ (re.* (re.range "0" "9")) (str.to.re "\x0a"))))))
; ^[1-9]\d*\.?[0]*$
(assert (str.in.re X (re.++ (re.range "1" "9") (re.* (re.range "0" "9")) (re.opt (str.to.re ".")) (re.* (str.to.re "0")) (str.to.re "\x0a"))))
(check-sat)
