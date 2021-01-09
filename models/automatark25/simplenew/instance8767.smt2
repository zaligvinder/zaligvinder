(declare-const X String)
; ^\d{3}-\d{7}[0-6]{1}$
(assert (not (str.in.re X (re.++ ((_ re.loop 3 3) (re.range "0" "9")) (str.to.re "-") ((_ re.loop 7 7) (re.range "0" "9")) ((_ re.loop 1 1) (re.range "0" "6")) (str.to.re "\x0a")))))
(check-sat)
