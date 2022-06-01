(declare-const X String)
; \u{2F}NFO\u{2C}Registered.*Host\u{3A}\s+TPSystemHost\u{3A}
(assert (str.in_re X (re.++ (str.to_re "/NFO,Registered") (re.* re.allchar) (str.to_re "Host:") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "TPSystemHost:\u{a}"))))
(check-sat)
