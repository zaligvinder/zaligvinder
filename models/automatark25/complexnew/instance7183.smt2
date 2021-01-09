(declare-const X String)
; /[^\x20-\x7e\x0d\x0a]{4}/P
(assert (not (str.in.re X (re.++ (str.to.re "/") ((_ re.loop 4 4) (re.union (re.range " " "~") (str.to.re "\x0d") (str.to.re "\x0a"))) (str.to.re "/P\x0a")))))
; ^(([0-1][0-9]|2[0-3])[0-5][0-9]\-([0-1][0-9]|2[0-3])[0-5][0-9]|[C|c]losed)$
(assert (not (str.in.re X (re.++ (re.union (re.++ (re.union (re.++ (re.range "0" "1") (re.range "0" "9")) (re.++ (str.to.re "2") (re.range "0" "3"))) (re.range "0" "5") (re.range "0" "9") (str.to.re "-") (re.union (re.++ (re.range "0" "1") (re.range "0" "9")) (re.++ (str.to.re "2") (re.range "0" "3"))) (re.range "0" "5") (re.range "0" "9")) (re.++ (re.union (str.to.re "C") (str.to.re "|") (str.to.re "c")) (str.to.re "losed"))) (str.to.re "\x0a")))))
(check-sat)
