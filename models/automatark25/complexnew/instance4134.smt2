(declare-const X String)
; ^[ABCEGHJKLMNPRSTVXY]{1}\d{1}[A-Z]{1} *\d{1}[A-Z]{1}\d{1}$
(assert (str.in.re X (re.++ ((_ re.loop 1 1) (re.union (str.to.re "A") (str.to.re "B") (str.to.re "C") (str.to.re "E") (str.to.re "G") (str.to.re "H") (str.to.re "J") (str.to.re "K") (str.to.re "L") (str.to.re "M") (str.to.re "N") (str.to.re "P") (str.to.re "R") (str.to.re "S") (str.to.re "T") (str.to.re "V") (str.to.re "X") (str.to.re "Y"))) ((_ re.loop 1 1) (re.range "0" "9")) ((_ re.loop 1 1) (re.range "A" "Z")) (re.* (str.to.re " ")) ((_ re.loop 1 1) (re.range "0" "9")) ((_ re.loop 1 1) (re.range "A" "Z")) ((_ re.loop 1 1) (re.range "0" "9")) (str.to.re "\x0a"))))
; ^[a-zA-Z]+(\.[a-zA-Z]+)+$
(assert (not (str.in.re X (re.++ (re.+ (re.union (re.range "a" "z") (re.range "A" "Z"))) (re.+ (re.++ (str.to.re ".") (re.+ (re.union (re.range "a" "z") (re.range "A" "Z"))))) (str.to.re "\x0a")))))
; ^([0-9]*\,?[0-9]+|[0-9]+\,?[0-9]*)?$
(assert (str.in.re X (re.++ (re.opt (re.union (re.++ (re.* (re.range "0" "9")) (re.opt (str.to.re ",")) (re.+ (re.range "0" "9"))) (re.++ (re.+ (re.range "0" "9")) (re.opt (str.to.re ",")) (re.* (re.range "0" "9"))))) (str.to.re "\x0a"))))
; ^07[789]-\d{7}$
(assert (not (str.in.re X (re.++ (str.to.re "07") (re.union (str.to.re "7") (str.to.re "8") (str.to.re "9")) (str.to.re "-") ((_ re.loop 7 7) (re.range "0" "9")) (str.to.re "\x0a")))))
; www\x2Epurityscan\x2Ecom.*
(assert (not (str.in.re X (re.++ (str.to.re "www.purityscan.com") (re.* re.allchar) (str.to.re "\x0a")))))
(check-sat)
