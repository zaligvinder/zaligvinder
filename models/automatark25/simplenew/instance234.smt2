(declare-const X String)
; ^[12345]$
(assert (str.in_re X (re.++ (re.union (str.to_re "1") (str.to_re "2") (str.to_re "3") (str.to_re "4") (str.to_re "5")) (str.to_re "\u{a}"))))
(check-sat)
