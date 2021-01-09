(declare-const X String)
; /^\x2f[0-9A-F]{42}$/Um
(assert (str.in.re X (re.++ (str.to.re "//") ((_ re.loop 42 42) (re.union (re.range "0" "9") (re.range "A" "F"))) (str.to.re "/Um\x0a"))))
(check-sat)
