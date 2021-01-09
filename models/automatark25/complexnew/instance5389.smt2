(declare-const X String)
; (^\b\d+-\d+$\b)|(^\b\d+$\b)
(assert (not (str.in.re X (re.union (re.++ (re.+ (re.range "0" "9")) (str.to.re "-") (re.+ (re.range "0" "9"))) (re.++ (re.+ (re.range "0" "9")) (str.to.re "\x0a"))))))
; ^([6011]{4})([0-9]{12})$
(assert (not (str.in.re X (re.++ ((_ re.loop 4 4) (re.union (str.to.re "6") (str.to.re "0") (str.to.re "1"))) ((_ re.loop 12 12) (re.range "0" "9")) (str.to.re "\x0a")))))
; ^[2-5](2|4|6|8|0)(A(A)?|B|C|D(D(D)?)?|E|F|G|H)$
(assert (not (str.in.re X (re.++ (re.range "2" "5") (re.union (str.to.re "2") (str.to.re "4") (str.to.re "6") (str.to.re "8") (str.to.re "0")) (re.union (re.++ (str.to.re "A") (re.opt (str.to.re "A"))) (str.to.re "B") (str.to.re "C") (re.++ (str.to.re "D") (re.opt (re.++ (str.to.re "D") (re.opt (str.to.re "D"))))) (str.to.re "E") (str.to.re "F") (str.to.re "G") (str.to.re "H")) (str.to.re "\x0a")))))
(check-sat)
