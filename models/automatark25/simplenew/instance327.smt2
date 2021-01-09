(declare-const X String)
; ^[0-9,]+['][-](\d|1[01])"$
(assert (not (str.in.re X (re.++ (re.+ (re.union (re.range "0" "9") (str.to.re ","))) (str.to.re "'-") (re.union (re.range "0" "9") (re.++ (str.to.re "1") (re.union (str.to.re "0") (str.to.re "1")))) (str.to.re "\x22\x0a")))))
(check-sat)
