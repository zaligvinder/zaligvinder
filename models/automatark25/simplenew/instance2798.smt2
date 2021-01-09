(declare-const X String)
; /^\x2fj\x2f[a-f0-9]{32}\x2f0001$/U
(assert (str.in.re X (re.++ (str.to.re "//j/") ((_ re.loop 32 32) (re.union (re.range "a" "f") (re.range "0" "9"))) (str.to.re "/0001/U\x0a"))))
(check-sat)
