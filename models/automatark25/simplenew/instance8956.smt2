(declare-const X String)
; ^(([0-9])|([0-1][0-9])|([2][0-3])):?([0-5][0-9])$
(assert (str.in.re X (re.++ (re.union (re.range "0" "9") (re.++ (re.range "0" "1") (re.range "0" "9")) (re.++ (str.to.re "2") (re.range "0" "3"))) (re.opt (str.to.re ":")) (str.to.re "\x0a") (re.range "0" "5") (re.range "0" "9"))))
(check-sat)
