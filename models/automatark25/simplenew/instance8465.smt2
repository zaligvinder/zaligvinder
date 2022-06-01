(declare-const X String)
; /\r\n\r\nsession\u{3a}\d{1,7}$/
(assert (str.in_re X (re.++ (str.to_re "/\u{d}\u{a}\u{d}\u{a}session:") ((_ re.loop 1 7) (re.range "0" "9")) (str.to_re "/\u{a}"))))
(check-sat)
