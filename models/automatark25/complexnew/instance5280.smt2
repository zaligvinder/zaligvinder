(declare-const X String)
; ^(([0-9]{5})*-([0-9]{4}))|([0-9]{5})$
(assert (str.in.re X (re.union (re.++ (re.* ((_ re.loop 5 5) (re.range "0" "9"))) (str.to.re "-") ((_ re.loop 4 4) (re.range "0" "9"))) (re.++ ((_ re.loop 5 5) (re.range "0" "9")) (str.to.re "\x0a")))))
; ^((\d{0,1}[0-9](\.\d{0,1}[0-9])?)|(100))$
(assert (not (str.in.re X (re.++ (re.union (re.++ (re.opt (re.range "0" "9")) (re.range "0" "9") (re.opt (re.++ (str.to.re ".") (re.opt (re.range "0" "9")) (re.range "0" "9")))) (str.to.re "100")) (str.to.re "\x0a")))))
; /rec\.php$/Usmi
(assert (str.in.re X (str.to.re "/rec.php/Usmi\x0a")))
(check-sat)
