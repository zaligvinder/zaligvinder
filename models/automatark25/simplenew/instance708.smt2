(declare-const X String)
; ^(3276[0-7]|327[0-5]\d|32[0-6]\d{2}|3[01]\d{3}|[12]\d{4}|[1-9]\d{3}|[1-9]\d{2}|[1-9]\d|\d)$
(assert (not (str.in.re X (re.++ (re.union (re.++ (str.to.re "3276") (re.range "0" "7")) (re.++ (str.to.re "327") (re.range "0" "5") (re.range "0" "9")) (re.++ (str.to.re "32") (re.range "0" "6") ((_ re.loop 2 2) (re.range "0" "9"))) (re.++ (str.to.re "3") (re.union (str.to.re "0") (str.to.re "1")) ((_ re.loop 3 3) (re.range "0" "9"))) (re.++ (re.union (str.to.re "1") (str.to.re "2")) ((_ re.loop 4 4) (re.range "0" "9"))) (re.++ (re.range "1" "9") ((_ re.loop 3 3) (re.range "0" "9"))) (re.++ (re.range "1" "9") ((_ re.loop 2 2) (re.range "0" "9"))) (re.++ (re.range "1" "9") (re.range "0" "9")) (re.range "0" "9")) (str.to.re "\x0a")))))
(check-sat)
