(declare-const X String)
; Host\u{3A}\s+Host\s+Host\u{3a}InformationX-OSSproxy\u{3a}as\u{2E}starware\u{2E}com
(assert (not (str.in_re X (re.++ (str.to_re "Host:") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "Host") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "Host:InformationX-OSSproxy:as.starware.com\u{a}")))))
(check-sat)
