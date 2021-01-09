(declare-const X String)
; ^(([+]31|0031)\s\(0\)([0-9]{9})|([+]31|0031)\s0([0-9]{9})|0([0-9]{9}))$
(assert (str.in.re X (re.++ (re.union (re.++ (re.union (str.to.re "+31") (str.to.re "0031")) (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "(0)") ((_ re.loop 9 9) (re.range "0" "9"))) (re.++ (re.union (str.to.re "+31") (str.to.re "0031")) (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "0") ((_ re.loop 9 9) (re.range "0" "9"))) (re.++ (str.to.re "0") ((_ re.loop 9 9) (re.range "0" "9")))) (str.to.re "\x0a"))))
(check-sat)
