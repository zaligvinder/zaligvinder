(declare-const X String)
; ^((0[1-9])|(1[0-2]))$
(assert (str.in_re X (re.++ (re.union (re.++ (str.to_re "0") (re.range "1" "9")) (re.++ (str.to_re "1") (re.range "0" "2"))) (str.to_re "\u{a}"))))
(check-sat)
