(declare-const X String)
; /\/count\d{2}\.php$/U
(assert (str.in.re X (re.++ (str.to.re "//count") ((_ re.loop 2 2) (re.range "0" "9")) (str.to.re ".php/U\x0a"))))
(check-sat)
