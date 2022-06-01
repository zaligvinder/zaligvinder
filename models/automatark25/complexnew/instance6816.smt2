(declare-const X String)
; ^([0-9a-fA-F])*$
(assert (str.in_re X (re.++ (re.* (re.union (re.range "0" "9") (re.range "a" "f") (re.range "A" "F"))) (str.to_re "\u{a}"))))
; ^[9]9\d{10}|^[5]\d{10}
(assert (not (str.in_re X (re.union (re.++ (str.to_re "99") ((_ re.loop 10 10) (re.range "0" "9"))) (re.++ (str.to_re "5") ((_ re.loop 10 10) (re.range "0" "9")) (str.to_re "\u{a}"))))))
; EFError.*\u{2F}cs\u{2F}pop4\u{2F}[^\n\r]*
(assert (str.in_re X (re.++ (str.to_re "EFError") (re.* re.allchar) (str.to_re "/cs/pop4/") (re.* (re.union (str.to_re "\u{a}") (str.to_re "\u{d}"))) (str.to_re "\u{a}"))))
; Host\u{3A}\dName=Your\+Host\+is\u{3A}.*has\s+ComputerKeylogger\u{2E}comHost\u{3A}
(assert (not (str.in_re X (re.++ (str.to_re "Host:") (re.range "0" "9") (str.to_re "Name=Your+Host+is:") (re.* re.allchar) (str.to_re "has") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "ComputerKeylogger.comHost:\u{a}")))))
(check-sat)
