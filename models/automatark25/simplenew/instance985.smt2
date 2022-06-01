(declare-const X String)
; BY\u{7D}\u{7B}User\u{3A}Host\u{3A}connection\u{2E}
(assert (not (str.in_re X (str.to_re "BY}{User:Host:connection.\u{a}"))))
(check-sat)
