(declare-const X String)
; ^((\d{5})|(\d{5}-\d{4})|([A-CEGHJ-NPR-TV-Z]\d[A-CEGHJ-NPR-TV-Z]\s\d[A-CEGHJ-NPR-TV-Z]\d))$
(assert (str.in.re X (re.++ (re.union ((_ re.loop 5 5) (re.range "0" "9")) (re.++ ((_ re.loop 5 5) (re.range "0" "9")) (str.to.re "-") ((_ re.loop 4 4) (re.range "0" "9"))) (re.++ (re.union (re.range "A" "C") (str.to.re "E") (str.to.re "G") (str.to.re "H") (re.range "J" "N") (str.to.re "P") (re.range "R" "T") (re.range "V" "Z")) (re.range "0" "9") (re.union (re.range "A" "C") (str.to.re "E") (str.to.re "G") (str.to.re "H") (re.range "J" "N") (str.to.re "P") (re.range "R" "T") (re.range "V" "Z")) (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (re.range "0" "9") (re.union (re.range "A" "C") (str.to.re "E") (str.to.re "G") (str.to.re "H") (re.range "J" "N") (str.to.re "P") (re.range "R" "T") (re.range "V" "Z")) (re.range "0" "9"))) (str.to.re "\x0a"))))
; (<input )(.*?)(>)
(assert (str.in.re X (re.++ (str.to.re "<input ") (re.* re.allchar) (str.to.re ">\x0a"))))
; ^#?([a-f]|[A-F]|[0-9]){3}(([a-f]|[A-F]|[0-9]){3})?$
(assert (str.in.re X (re.++ (re.opt (str.to.re "#")) ((_ re.loop 3 3) (re.union (re.range "a" "f") (re.range "A" "F") (re.range "0" "9"))) (re.opt ((_ re.loop 3 3) (re.union (re.range "a" "f") (re.range "A" "F") (re.range "0" "9")))) (str.to.re "\x0a"))))
(check-sat)
