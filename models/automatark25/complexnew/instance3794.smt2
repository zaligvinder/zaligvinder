(declare-const X String)
; ^(0?[1-9]|1[0-2])\/(0?[1-9]|[1-2][0-9]|3[0-1])\/(0[1-9]|[1-9][0-9]|175[3-9]|17[6-9][0-9]|1[8-9][0-9]{2}|[2-9][0-9]{3})$
(assert (not (str.in.re X (re.++ (re.union (re.++ (re.opt (str.to.re "0")) (re.range "1" "9")) (re.++ (str.to.re "1") (re.range "0" "2"))) (str.to.re "/") (re.union (re.++ (re.opt (str.to.re "0")) (re.range "1" "9")) (re.++ (re.range "1" "2") (re.range "0" "9")) (re.++ (str.to.re "3") (re.range "0" "1"))) (str.to.re "/") (re.union (re.++ (str.to.re "0") (re.range "1" "9")) (re.++ (re.range "1" "9") (re.range "0" "9")) (re.++ (str.to.re "175") (re.range "3" "9")) (re.++ (str.to.re "17") (re.range "6" "9") (re.range "0" "9")) (re.++ (str.to.re "1") (re.range "8" "9") ((_ re.loop 2 2) (re.range "0" "9"))) (re.++ (re.range "2" "9") ((_ re.loop 3 3) (re.range "0" "9")))) (str.to.re "\x0a")))))
; ^[0-9]{6}$
(assert (str.in.re X (re.++ ((_ re.loop 6 6) (re.range "0" "9")) (str.to.re "\x0a"))))
; ^[0][5][0]-\d{7}|[0][5][2]-\d{7}|[0][5][4]-\d{7}|[0][5][7]-\d{7}$
(assert (str.in.re X (re.union (re.++ (str.to.re "050-") ((_ re.loop 7 7) (re.range "0" "9"))) (re.++ (str.to.re "052-") ((_ re.loop 7 7) (re.range "0" "9"))) (re.++ (str.to.re "054-") ((_ re.loop 7 7) (re.range "0" "9"))) (re.++ (str.to.re "057-") ((_ re.loop 7 7) (re.range "0" "9")) (str.to.re "\x0a")))))
; ^([a-zA-Z].*|[1-9].*|[:./].*)\.(((a|A)(s|S)(p|P)(x|X)))$
(assert (str.in.re X (re.++ (re.union (re.++ (re.union (re.range "a" "z") (re.range "A" "Z")) (re.* re.allchar)) (re.++ (re.range "1" "9") (re.* re.allchar)) (re.++ (re.union (str.to.re ":") (str.to.re ".") (str.to.re "/")) (re.* re.allchar))) (str.to.re ".\x0a") (re.union (str.to.re "a") (str.to.re "A")) (re.union (str.to.re "s") (str.to.re "S")) (re.union (str.to.re "p") (str.to.re "P")) (re.union (str.to.re "x") (str.to.re "X")))))
; /^\x2frouji.txt$/mU
(assert (not (str.in.re X (re.++ (str.to.re "//rouji") re.allchar (str.to.re "txt/mU\x0a")))))
(check-sat)
