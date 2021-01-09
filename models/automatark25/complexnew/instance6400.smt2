(declare-const X String)
; \binterface\b.*(\bI[_]\w*\b)
(assert (not (str.in.re X (re.++ (str.to.re "interface") (re.* re.allchar) (str.to.re "\x0aI_") (re.* (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_")))))))
; ^[0-9]{2}[-][0-9]{2}[-][0-9]{2}$
(assert (str.in.re X (re.++ ((_ re.loop 2 2) (re.range "0" "9")) (str.to.re "-") ((_ re.loop 2 2) (re.range "0" "9")) (str.to.re "-") ((_ re.loop 2 2) (re.range "0" "9")) (str.to.re "\x0a"))))
(check-sat)
