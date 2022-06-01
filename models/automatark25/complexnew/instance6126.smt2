(declare-const X String)
; (\'([^\'\\]*\\.)*[^\'\\]*\')+
(assert (not (str.in_re X (re.++ (re.+ (re.++ (str.to_re "'") (re.* (re.++ (re.* (re.union (str.to_re "'") (str.to_re "\u{5c}"))) (str.to_re "\u{5c}") re.allchar)) (re.* (re.union (str.to_re "'") (str.to_re "\u{5c}"))) (str.to_re "'"))) (str.to_re "\u{a}")))))
; configINTERNAL\.ini\s+User-Agent\u{3A}\s+Host\u{3A}Subject\u{3a}
(assert (not (str.in_re X (re.++ (str.to_re "configINTERNAL.ini") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "User-Agent:") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "Host:Subject:\u{a}")))))
(check-sat)
