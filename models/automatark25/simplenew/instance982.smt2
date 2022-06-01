(declare-const X String)
; ^(20|21|22|23|[0-1]\d)[0-5]\d$
(assert (str.in_re X (re.++ (re.union (str.to_re "20") (str.to_re "21") (str.to_re "22") (str.to_re "23") (re.++ (re.range "0" "1") (re.range "0" "9"))) (re.range "0" "5") (re.range "0" "9") (str.to_re "\u{a}"))))
(check-sat)
