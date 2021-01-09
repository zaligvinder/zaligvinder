(declare-const X String)
; /^\/\d{2,4}\.xap$/U
(assert (str.in.re X (re.++ (str.to.re "//") ((_ re.loop 2 4) (re.range "0" "9")) (str.to.re ".xap/U\x0a"))))
(check-sat)
