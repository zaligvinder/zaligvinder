(declare-const X String)
; 9[0-9]
(assert (str.in.re X (re.++ (str.to.re "9") (re.range "0" "9") (str.to.re "\x0a"))))
(check-sat)
