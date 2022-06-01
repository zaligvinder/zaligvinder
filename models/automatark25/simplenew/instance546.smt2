(declare-const X String)
; ^[0-9]*[02468]$
(assert (str.in_re X (re.++ (re.* (re.range "0" "9")) (re.union (str.to_re "0") (str.to_re "2") (str.to_re "4") (str.to_re "6") (str.to_re "8")) (str.to_re "\u{a}"))))
(check-sat)
