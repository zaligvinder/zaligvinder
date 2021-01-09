(declare-const X String)
; ^\d{5}(\-)(\d{3})?$
(assert (not (str.in.re X (re.++ ((_ re.loop 5 5) (re.range "0" "9")) (str.to.re "-") (re.opt ((_ re.loop 3 3) (re.range "0" "9"))) (str.to.re "\x0a")))))
(check-sat)
