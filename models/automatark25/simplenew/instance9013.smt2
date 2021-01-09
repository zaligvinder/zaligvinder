(declare-const X String)
; /[A-F0-9]{8}(-[A-F0-9]{4}){3}-[A-F0-9]{12}.wipe$/Ui
(assert (not (str.in.re X (re.++ (str.to.re "/") ((_ re.loop 8 8) (re.union (re.range "A" "F") (re.range "0" "9"))) ((_ re.loop 3 3) (re.++ (str.to.re "-") ((_ re.loop 4 4) (re.union (re.range "A" "F") (re.range "0" "9"))))) (str.to.re "-") ((_ re.loop 12 12) (re.union (re.range "A" "F") (re.range "0" "9"))) re.allchar (str.to.re "wipe/Ui\x0a")))))
(check-sat)
