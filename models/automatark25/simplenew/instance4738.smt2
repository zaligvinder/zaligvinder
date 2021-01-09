(declare-const X String)
; ^[A-G](b|#)?((m(aj)?|M|aug|dim|sus)([2-7]|9|13)?)?(\/[A-G](b|#)?)?$
(assert (str.in.re X (re.++ (re.range "A" "G") (re.opt (re.union (str.to.re "b") (str.to.re "#"))) (re.opt (re.++ (re.union (re.++ (str.to.re "m") (re.opt (str.to.re "aj"))) (str.to.re "M") (str.to.re "aug") (str.to.re "dim") (str.to.re "sus")) (re.opt (re.union (re.range "2" "7") (str.to.re "9") (str.to.re "13"))))) (re.opt (re.++ (str.to.re "/") (re.range "A" "G") (re.opt (re.union (str.to.re "b") (str.to.re "#"))))) (str.to.re "\x0a"))))
(check-sat)
