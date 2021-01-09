(declare-const X String)
; /^\/amor\d{0,2}\.jar/U
(assert (str.in.re X (re.++ (str.to.re "//amor") ((_ re.loop 0 2) (re.range "0" "9")) (str.to.re ".jar/U\x0a"))))
(check-sat)
