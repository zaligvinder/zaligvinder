(declare-const X String)
; /^\/\d{4}\/\d{7}$/U
(assert (not (str.in_re X (re.++ (str.to_re "//") ((_ re.loop 4 4) (re.range "0" "9")) (str.to_re "/") ((_ re.loop 7 7) (re.range "0" "9")) (str.to_re "/U\u{a}")))))
(check-sat)
