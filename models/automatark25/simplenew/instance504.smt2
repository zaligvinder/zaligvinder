(declare-const X String)
; ^\d{2}[0-1][0-9][0-3][0-9]-{0,1}\d{2}-{0,1}\d{4}$
(assert (str.in.re X (re.++ ((_ re.loop 2 2) (re.range "0" "9")) (re.range "0" "1") (re.range "0" "9") (re.range "0" "3") (re.range "0" "9") (re.opt (str.to.re "-")) ((_ re.loop 2 2) (re.range "0" "9")) (re.opt (str.to.re "-")) ((_ re.loop 4 4) (re.range "0" "9")) (str.to.re "\x0a"))))
(check-sat)
