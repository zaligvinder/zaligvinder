(declare-const X String)
; Host\u{3A}\dName=Your\+Host\+is\u{3A}.*has\s+ComputerKeylogger\u{2E}comHost\u{3A}
(assert (str.in_re X (re.++ (str.to_re "Host:") (re.range "0" "9") (str.to_re "Name=Your+Host+is:") (re.* re.allchar) (str.to_re "has") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "ComputerKeylogger.comHost:\u{a}"))))
(check-sat)
