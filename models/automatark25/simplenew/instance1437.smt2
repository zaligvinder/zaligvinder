(declare-const X String)
; ([1-9]|[1-4][0-9]|5[0-2])
(assert (not (str.in.re X (re.++ (re.union (re.range "1" "9") (re.++ (re.range "1" "4") (re.range "0" "9")) (re.++ (str.to.re "5") (re.range "0" "2"))) (str.to.re "\x0a")))))
(check-sat)
