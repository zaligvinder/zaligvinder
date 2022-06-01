(declare-const X String)
; TCP\s+Host\u{3a}\u{7D}\u{7C}richfind\u{2E}comHost\u{3A}Subject\u{3a}
(assert (str.in_re X (re.++ (str.to_re "TCP") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "Host:}|richfind.comHost:Subject:\u{a}"))))
(check-sat)
