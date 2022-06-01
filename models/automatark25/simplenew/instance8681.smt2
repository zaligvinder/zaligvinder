(declare-const X String)
; ([1-9]|[1-4][0-9]|5[0-2])
(assert (str.in_re X (re.++ (re.union (re.range "1" "9") (re.++ (re.range "1" "4") (re.range "0" "9")) (re.++ (str.to_re "5") (re.range "0" "2"))) (str.to_re "\u{a}"))))
(check-sat)
