(declare-const X String)
; ^[2-5](2|4|6|8|0)(A(A)?|B|C|D(D(D)?)?|E|F|G|H)$
(assert (str.in.re X (re.++ (re.range "2" "5") (re.union (str.to.re "2") (str.to.re "4") (str.to.re "6") (str.to.re "8") (str.to.re "0")) (re.union (re.++ (str.to.re "A") (re.opt (str.to.re "A"))) (str.to.re "B") (str.to.re "C") (re.++ (str.to.re "D") (re.opt (re.++ (str.to.re "D") (re.opt (str.to.re "D"))))) (str.to.re "E") (str.to.re "F") (str.to.re "G") (str.to.re "H")) (str.to.re "\x0a"))))
; Xtrawww\x2Einstafinder\x2EcomsearchHost\x3A
(assert (not (str.in.re X (str.to.re "Xtrawww.instafinder.comsearchHost:\x0a"))))
(check-sat)
