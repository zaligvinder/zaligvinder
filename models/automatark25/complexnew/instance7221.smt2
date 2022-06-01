(declare-const X String)
; ovplSubject\u{3A}TencentTravelerClient\u{7D}\u{7B}Sysuptime\u{3A}
(assert (str.in_re X (str.to_re "ovplSubject:TencentTravelerClient}{Sysuptime:\u{a}")))
; Host\u{3A}\sToolbarServerserver\u{7D}\u{7B}Sysuptime\u{3A}
(assert (str.in_re X (re.++ (str.to_re "Host:") (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re "ToolbarServerserver}{Sysuptime:\u{a}"))))
; [0-9][.][0-9]{3}$
(assert (str.in_re X (re.++ (re.range "0" "9") (str.to_re ".") ((_ re.loop 3 3) (re.range "0" "9")) (str.to_re "\u{a}"))))
; User-Agent\u{3a}\s+sErver\s+-~-GREATHost\u{3a}
(assert (not (str.in_re X (re.++ (str.to_re "User-Agent:") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "sErver") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "-~-GREATHost:\u{a}")))))
(check-sat)
