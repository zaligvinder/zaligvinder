(declare-const X String)
; /gate\x2ephp\x3fid=[a-z]{15}/U
(assert (str.in.re X (re.++ (str.to.re "/gate.php?id=") ((_ re.loop 15 15) (re.range "a" "z")) (str.to.re "/U\x0a"))))
(check-sat)
