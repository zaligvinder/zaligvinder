(declare-const X String)
; /^\/[-\w]{70,78}==?$/U
(assert (not (str.in.re X (re.++ (str.to.re "//") ((_ re.loop 70 78) (re.union (str.to.re "-") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "=") (re.opt (str.to.re "=")) (str.to.re "/U\x0a")))))
(check-sat)
