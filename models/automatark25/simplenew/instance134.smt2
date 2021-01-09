(declare-const X String)
; /i=[a-zA-Z0-9$~]{40}/U
(assert (str.in.re X (re.++ (str.to.re "/i=") ((_ re.loop 40 40) (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to.re "$") (str.to.re "~"))) (str.to.re "/U\x0a"))))
(check-sat)
