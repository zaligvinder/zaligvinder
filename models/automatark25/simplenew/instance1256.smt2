(declare-const X String)
; \u{2F}cs\u{2F}pop4\u{2F}\s+data\.warezclient\.com
(assert (str.in_re X (re.++ (str.to_re "/cs/pop4/") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "data.warezclient.com\u{a}"))))
(check-sat)
