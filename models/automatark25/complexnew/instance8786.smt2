(declare-const X String)
; ^(0+[1-9]|[1-9])[0-9]*$
(assert (not (str.in_re X (re.++ (re.union (re.++ (re.+ (str.to_re "0")) (re.range "1" "9")) (re.range "1" "9")) (re.* (re.range "0" "9")) (str.to_re "\u{a}")))))
; bind\w+Owner\u{3A}\dBetaWordixqshv\u{2f}qzccs
(assert (str.in_re X (re.++ (str.to_re "bind") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "Owner:") (re.range "0" "9") (str.to_re "BetaWordixqshv/qzccs\u{a}"))))
; ^[A-G](b|#)?((m(aj)?|M|aug|dim|sus)([2-7]|9|13)?)?(\/[A-G](b|#)?)?$
(assert (not (str.in_re X (re.++ (re.range "A" "G") (re.opt (re.union (str.to_re "b") (str.to_re "#"))) (re.opt (re.++ (re.union (re.++ (str.to_re "m") (re.opt (str.to_re "aj"))) (str.to_re "M") (str.to_re "aug") (str.to_re "dim") (str.to_re "sus")) (re.opt (re.union (re.range "2" "7") (str.to_re "9") (str.to_re "13"))))) (re.opt (re.++ (str.to_re "/") (re.range "A" "G") (re.opt (re.union (str.to_re "b") (str.to_re "#"))))) (str.to_re "\u{a}")))))
; ^[a-zA-Z]+(([\'\,\.\-][a-zA-Z])?[a-zA-Z]*)*$
(assert (not (str.in_re X (re.++ (re.+ (re.union (re.range "a" "z") (re.range "A" "Z"))) (re.* (re.++ (re.opt (re.++ (re.union (str.to_re "'") (str.to_re ",") (str.to_re ".") (str.to_re "-")) (re.union (re.range "a" "z") (re.range "A" "Z")))) (re.* (re.union (re.range "a" "z") (re.range "A" "Z"))))) (str.to_re "\u{a}")))))
(check-sat)
