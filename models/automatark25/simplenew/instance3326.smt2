(declare-const X String)
; /\?a=dw[a-z]$/U
(assert (str.in_re X (re.++ (str.to_re "/?a=dw") (re.range "a" "z") (str.to_re "/U\u{a}"))))
(check-sat)
