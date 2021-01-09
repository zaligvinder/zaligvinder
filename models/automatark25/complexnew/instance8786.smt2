(declare-const X String)
; ^(0+[1-9]|[1-9])[0-9]*$
(assert (not (str.in.re X (re.++ (re.union (re.++ (re.+ (str.to.re "0")) (re.range "1" "9")) (re.range "1" "9")) (re.* (re.range "0" "9")) (str.to.re "\x0a")))))
; bind\w+Owner\x3A\dBetaWordixqshv\x2fqzccs
(assert (str.in.re X (re.++ (str.to.re "bind") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "Owner:") (re.range "0" "9") (str.to.re "BetaWordixqshv/qzccs\x0a"))))
; ^[A-G](b|#)?((m(aj)?|M|aug|dim|sus)([2-7]|9|13)?)?(\/[A-G](b|#)?)?$
(assert (not (str.in.re X (re.++ (re.range "A" "G") (re.opt (re.union (str.to.re "b") (str.to.re "#"))) (re.opt (re.++ (re.union (re.++ (str.to.re "m") (re.opt (str.to.re "aj"))) (str.to.re "M") (str.to.re "aug") (str.to.re "dim") (str.to.re "sus")) (re.opt (re.union (re.range "2" "7") (str.to.re "9") (str.to.re "13"))))) (re.opt (re.++ (str.to.re "/") (re.range "A" "G") (re.opt (re.union (str.to.re "b") (str.to.re "#"))))) (str.to.re "\x0a")))))
; ^[a-zA-Z]+(([\'\,\.\-][a-zA-Z])?[a-zA-Z]*)*$
(assert (not (str.in.re X (re.++ (re.+ (re.union (re.range "a" "z") (re.range "A" "Z"))) (re.* (re.++ (re.opt (re.++ (re.union (str.to.re "'") (str.to.re ",") (str.to.re ".") (str.to.re "-")) (re.union (re.range "a" "z") (re.range "A" "Z")))) (re.* (re.union (re.range "a" "z") (re.range "A" "Z"))))) (str.to.re "\x0a")))))
(check-sat)
