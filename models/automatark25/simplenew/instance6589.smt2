(declare-const X String)
; /listoverridecount([2345678]|[019][0-9])/i
(assert (str.in_re X (re.++ (str.to_re "/listoverridecount") (re.union (re.++ (re.union (str.to_re "0") (str.to_re "1") (str.to_re "9")) (re.range "0" "9")) (str.to_re "2") (str.to_re "3") (str.to_re "4") (str.to_re "5") (str.to_re "6") (str.to_re "7") (str.to_re "8")) (str.to_re "/i\u{a}"))))
(check-sat)
