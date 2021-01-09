(declare-const X String)
; /^\/[A-Z]{6}$/U
(assert (not (str.in.re X (re.++ (str.to.re "//") ((_ re.loop 6 6) (re.range "A" "Z")) (str.to.re "/U\x0a")))))
(check-sat)
