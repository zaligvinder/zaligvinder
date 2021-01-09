(declare-const X String)
; /^[0-9]+\.d{3}? *$/
(assert (str.in.re X (re.++ (str.to.re "/") (re.+ (re.range "0" "9")) (str.to.re ".") ((_ re.loop 3 3) (str.to.re "d")) (re.* (str.to.re " ")) (str.to.re "/\x0a"))))
(check-sat)
