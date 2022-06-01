(declare-const X String)
; /\.js\/\?[a-z]+\=[a-z]{1,4}/R
(assert (not (str.in_re X (re.++ (str.to_re "/.js/?") (re.+ (re.range "a" "z")) (str.to_re "=") ((_ re.loop 1 4) (re.range "a" "z")) (str.to_re "/R\u{a}")))))
(check-sat)
