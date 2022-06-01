(declare-const X String)
; ^(-|\+)?(((100|((0|[1-9]{1,2})(\.[0-9]+)?)))|(\.[0-9]+))%?$
(assert (str.in_re X (re.++ (re.opt (re.union (str.to_re "-") (str.to_re "+"))) (re.union (re.++ (str.to_re ".") (re.+ (re.range "0" "9"))) (str.to_re "100") (re.++ (re.union (str.to_re "0") ((_ re.loop 1 2) (re.range "1" "9"))) (re.opt (re.++ (str.to_re ".") (re.+ (re.range "0" "9")))))) (re.opt (str.to_re "%")) (str.to_re "\u{a}"))))
; User-Agent\u{3A}[^\n\r]*HTTP_RAT_
(assert (not (str.in_re X (re.++ (str.to_re "User-Agent:") (re.* (re.union (str.to_re "\u{a}") (str.to_re "\u{d}"))) (str.to_re "HTTP_RAT_\u{a}")))))
; Host\u{3A}\s+\.ico\s+Host\u{3A}origin\u{3D}sidefind
(assert (str.in_re X (re.++ (str.to_re "Host:") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re ".ico") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "Host:origin=sidefind\u{a}"))))
(check-sat)
