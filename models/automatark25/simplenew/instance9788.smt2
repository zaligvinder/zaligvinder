(declare-const X String)
; Host\u{3A}\s+User-Agent\u{3A}.*LogsHost\u{3A}Host\u{3A}
(assert (not (str.in_re X (re.++ (str.to_re "Host:") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "User-Agent:") (re.* re.allchar) (str.to_re "LogsHost:Host:\u{a}")))))
(check-sat)
