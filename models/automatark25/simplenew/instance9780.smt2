(declare-const X String)
; /gate\x2ephp\x3freg=[a-zA-Z]{15}/U
(assert (not (str.in.re X (re.++ (str.to.re "/gate.php?reg=") ((_ re.loop 15 15) (re.union (re.range "a" "z") (re.range "A" "Z"))) (str.to.re "/U\x0a")))))
(check-sat)
