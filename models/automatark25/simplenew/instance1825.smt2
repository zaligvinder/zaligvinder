(declare-const X String)
; ^[1]$|^[3]$|^[4]$|^[6]$|^[1]0$
(assert (str.in_re X (re.union (str.to_re "1") (str.to_re "3") (str.to_re "4") (str.to_re "6") (str.to_re "10\u{a}"))))
(check-sat)
