(declare-const X String)
; /^[^\u{0}][^\u{0}\u{1}]+$/
(assert (not (str.in_re X (re.++ (str.to_re "/") (re.comp (str.to_re "\u{0}")) (re.+ (re.union (str.to_re "\u{0}") (str.to_re "\u{1}"))) (str.to_re "/\u{a}")))))
(check-sat)
