(declare-const X String)
; /[0-9A-Z]{8}\x3abpass\x0a/
(assert (str.in.re X (re.++ (str.to.re "/") ((_ re.loop 8 8) (re.union (re.range "0" "9") (re.range "A" "Z"))) (str.to.re ":bpass\x0a/\x0a"))))
; ^[SFTG]\d{7}[A-Z]$
(assert (not (str.in.re X (re.++ (re.union (str.to.re "S") (str.to.re "F") (str.to.re "T") (str.to.re "G")) ((_ re.loop 7 7) (re.range "0" "9")) (re.range "A" "Z") (str.to.re "\x0a")))))
; ^\d{5}(-\d{3})?$
(assert (str.in.re X (re.++ ((_ re.loop 5 5) (re.range "0" "9")) (re.opt (re.++ (str.to.re "-") ((_ re.loop 3 3) (re.range "0" "9")))) (str.to.re "\x0a"))))
; ^[A-Za-z]\d[A-Za-z][ -]?\d[A-Za-z]\d$
(assert (str.in.re X (re.++ (re.union (re.range "A" "Z") (re.range "a" "z")) (re.range "0" "9") (re.union (re.range "A" "Z") (re.range "a" "z")) (re.opt (re.union (str.to.re " ") (str.to.re "-"))) (re.range "0" "9") (re.union (re.range "A" "Z") (re.range "a" "z")) (re.range "0" "9") (str.to.re "\x0a"))))
(check-sat)
