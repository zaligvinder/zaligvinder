(declare-const X String)
; [0-9][.][0-9]{3}$
(assert (str.in.re X (re.++ (re.range "0" "9") (str.to.re ".") ((_ re.loop 3 3) (re.range "0" "9")) (str.to.re "\x0a"))))
(check-sat)
