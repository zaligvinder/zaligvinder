(declare-const X String)
; /gate\x2ephp\x3freg=[a-z]{10}/U
(assert (not (str.in.re X (re.++ (str.to.re "/gate.php?reg=") ((_ re.loop 10 10) (re.range "a" "z")) (str.to.re "/U\x0a")))))
(check-sat)
