(declare-const X String)
; ((079)|(078)|(077)){1}[0-9]{7}
(assert (not (str.in.re X (re.++ ((_ re.loop 1 1) (re.union (str.to.re "079") (str.to.re "078") (str.to.re "077"))) ((_ re.loop 7 7) (re.range "0" "9")) (str.to.re "\x0a")))))
(check-sat)
