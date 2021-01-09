(declare-const X String)
; \w{5,255}
(assert (not (str.in.re X (re.++ ((_ re.loop 5 255) (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "\x0a")))))
(check-sat)
