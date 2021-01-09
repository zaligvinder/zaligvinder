(declare-const X String)
; /^\x2f[a-f0-9]{135}/Um
(assert (str.in.re X (re.++ (str.to.re "//") ((_ re.loop 135 135) (re.union (re.range "a" "f") (re.range "0" "9"))) (str.to.re "/Um\x0a"))))
(check-sat)
