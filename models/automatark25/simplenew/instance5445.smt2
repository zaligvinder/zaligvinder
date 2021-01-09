(declare-const X String)
; /\.js\/\?[a-z]+\=[a-z]{1,4}/R
(assert (not (str.in.re X (re.++ (str.to.re "/.js/?") (re.+ (re.range "a" "z")) (str.to.re "=") ((_ re.loop 1 4) (re.range "a" "z")) (str.to.re "/R\x0a")))))
(check-sat)
