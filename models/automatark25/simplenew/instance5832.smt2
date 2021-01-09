(declare-const X String)
; /^\/\d{10}\/\d{10}\.tpl$/U
(assert (str.in.re X (re.++ (str.to.re "//") ((_ re.loop 10 10) (re.range "0" "9")) (str.to.re "/") ((_ re.loop 10 10) (re.range "0" "9")) (str.to.re ".tpl/U\x0a"))))
(check-sat)
