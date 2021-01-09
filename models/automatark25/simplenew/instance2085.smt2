(declare-const X String)
; /^\/\?[a-f0-9]{32}$/U
(assert (not (str.in.re X (re.++ (str.to.re "//?") ((_ re.loop 32 32) (re.union (re.range "a" "f") (re.range "0" "9"))) (str.to.re "/U\x0a")))))
(check-sat)
