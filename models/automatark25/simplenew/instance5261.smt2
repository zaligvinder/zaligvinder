(declare-const X String)
; User-Agent\u{3A}\s+ocllceclbhs\u{2f}gth.*Host\u{3A}
(assert (not (str.in_re X (re.++ (str.to_re "User-Agent:") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "ocllceclbhs/gth") (re.* re.allchar) (str.to_re "Host:\u{a}")))))
(check-sat)
