(declare-const X String)
; ^[a-zA-Z]+((\s|\-)[a-zA-Z]+)?$
(assert (str.in.re X (re.++ (re.+ (re.union (re.range "a" "z") (re.range "A" "Z"))) (re.opt (re.++ (re.union (str.to.re "-") (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (re.+ (re.union (re.range "a" "z") (re.range "A" "Z"))))) (str.to.re "\x0a"))))
; ^[2-5](2|4|6|8|0)(A(A)?|B|C|D(D(D)?)?|E|F|G|H)$
(assert (not (str.in.re X (re.++ (re.range "2" "5") (re.union (str.to.re "2") (str.to.re "4") (str.to.re "6") (str.to.re "8") (str.to.re "0")) (re.union (re.++ (str.to.re "A") (re.opt (str.to.re "A"))) (str.to.re "B") (str.to.re "C") (re.++ (str.to.re "D") (re.opt (re.++ (str.to.re "D") (re.opt (str.to.re "D"))))) (str.to.re "E") (str.to.re "F") (str.to.re "G") (str.to.re "H")) (str.to.re "\x0a")))))
; ("((\\.)|[^\\"])*")
(assert (str.in.re X (re.++ (str.to.re "\x0a\x22") (re.* (re.union (re.++ (str.to.re "\x5c") re.allchar) (str.to.re "\x5c") (str.to.re "\x22"))) (str.to.re "\x22"))))
(check-sat)
