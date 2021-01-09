(declare-const X String)
; /\/[a-z0-9]{12}\.txt$/U
(assert (str.in.re X (re.++ (str.to.re "//") ((_ re.loop 12 12) (re.union (re.range "a" "z") (re.range "0" "9"))) (str.to.re ".txt/U\x0a"))))
(check-sat)
