(declare-const X String)
; /^\x2f\d{3}\x2f\d{3}\x2ehtml$/U
(assert (not (str.in.re X (re.++ (str.to.re "//") ((_ re.loop 3 3) (re.range "0" "9")) (str.to.re "/") ((_ re.loop 3 3) (re.range "0" "9")) (str.to.re ".html/U\x0a")))))
(check-sat)
