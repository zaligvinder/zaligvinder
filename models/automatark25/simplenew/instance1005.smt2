(declare-const X String)
; \u{2A}PORT2\u{2A}\w+Host\u{3a}\s+jspIDENTIFYserverHOST\u{3A}Subject\u{3A}i\-femdom\u{2E}comUser-Agent\u{3A}log\=\u{7B}IP\u{3A}
(assert (not (str.in_re X (re.++ (str.to_re "*PORT2*") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "Host:") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "jspIDENTIFYserverHOST:Subject:i-femdom.comUser-Agent:log={IP:\u{a}")))))
(check-sat)
