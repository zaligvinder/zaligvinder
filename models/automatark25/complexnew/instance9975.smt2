(declare-const X String)
; ^([a-zA-z\s]{4,32})$
(assert (not (str.in.re X (re.++ ((_ re.loop 4 32) (re.union (re.range "a" "z") (re.range "A" "z") (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "\x0a")))))
; [\x00-\x1F\x7F]
(assert (str.in.re X (re.++ (re.union (re.range "\x00" "\x1f") (str.to.re "\x7f")) (str.to.re "\x0a"))))
(check-sat)
