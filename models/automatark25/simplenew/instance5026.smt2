(declare-const X String)
; /^\/\d{9,10}\/1\d{9}\.jar$/U
(assert (not (str.in.re X (re.++ (str.to.re "//") ((_ re.loop 9 10) (re.range "0" "9")) (str.to.re "/1") ((_ re.loop 9 9) (re.range "0" "9")) (str.to.re ".jar/U\x0a")))))
(check-sat)
