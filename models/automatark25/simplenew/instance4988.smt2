(declare-const X String)
; /\u{2}[^\u{a}]+\u{3a}[^\u{a}]+\u{a}/
(assert (str.in_re X (re.++ (str.to_re "/\u{2}") (re.+ (re.comp (str.to_re "\u{a}"))) (str.to_re ":") (re.+ (re.comp (str.to_re "\u{a}"))) (str.to_re "\u{a}/\u{a}"))))
(check-sat)
