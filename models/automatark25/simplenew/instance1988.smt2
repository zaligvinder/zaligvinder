(declare-const X String)
; ([0-1][0-9]|2[0-3]):[0-5][0-9]
(assert (not (str.in.re X (re.++ (re.union (re.++ (re.range "0" "1") (re.range "0" "9")) (re.++ (str.to.re "2") (re.range "0" "3"))) (str.to.re ":") (re.range "0" "5") (re.range "0" "9") (str.to.re "\x0a")))))
(check-sat)
