(declare-const X String)
; /\/[a-z]{2}\/testcon.php$/U
(assert (str.in.re X (re.++ (str.to.re "//") ((_ re.loop 2 2) (re.range "a" "z")) (str.to.re "/testcon") re.allchar (str.to.re "php/U\x0a"))))
(check-sat)
