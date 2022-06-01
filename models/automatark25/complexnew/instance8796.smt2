(declare-const X String)
; My\u{2F}desktop\u{2F}WinSessionHost\u{3a}OnlineTPSystem\u{7D}\u{7C}
(assert (str.in_re X (str.to_re "My/desktop/WinSessionHost:OnlineTPSystem}|\u{a}")))
; ^[ABCGHJMPQRTWXYZ]$
(assert (not (str.in_re X (re.++ (re.union (str.to_re "A") (str.to_re "B") (str.to_re "C") (str.to_re "G") (str.to_re "H") (str.to_re "J") (str.to_re "M") (str.to_re "P") (str.to_re "Q") (str.to_re "R") (str.to_re "T") (str.to_re "W") (str.to_re "X") (str.to_re "Y") (str.to_re "Z")) (str.to_re "\u{a}")))))
; (01*0|1)*
(assert (not (str.in_re X (re.++ (re.* (re.union (re.++ (str.to_re "0") (re.* (str.to_re "1")) (str.to_re "0")) (str.to_re "1"))) (str.to_re "\u{a}")))))
(check-sat)
