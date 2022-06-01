(declare-const X String)
; /^Host\u{3A}\s+.*jaiku\u{2E}com/smiH
(assert (not (str.in_re X (re.++ (str.to_re "/Host:") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (re.* re.allchar) (str.to_re "jaiku.com/smiH\u{a}")))))
(check-sat)
