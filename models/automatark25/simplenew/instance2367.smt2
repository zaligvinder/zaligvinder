(declare-const X String)
; ^\d{5}$|^\d{5}-\d{4}$
(assert (not (str.in.re X (re.union ((_ re.loop 5 5) (re.range "0" "9")) (re.++ ((_ re.loop 5 5) (re.range "0" "9")) (str.to.re "-") ((_ re.loop 4 4) (re.range "0" "9")) (str.to.re "\x0a"))))))
(check-sat)
