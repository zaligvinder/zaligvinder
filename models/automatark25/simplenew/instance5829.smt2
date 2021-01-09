(declare-const X String)
; /\x23\d{2}\x3a\d{2}\x3a\d\d$/R
(assert (str.in.re X (re.++ (str.to.re "/#") ((_ re.loop 2 2) (re.range "0" "9")) (str.to.re ":") ((_ re.loop 2 2) (re.range "0" "9")) (str.to.re ":") (re.range "0" "9") (re.range "0" "9") (str.to.re "/R\x0a"))))
(check-sat)
