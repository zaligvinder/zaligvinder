(declare-const X String)
; /\r\n\r\nsession\x3a\d{1,7}$/
(assert (str.in.re X (re.++ (str.to.re "/\x0d\x0a\x0d\x0asession:") ((_ re.loop 1 7) (re.range "0" "9")) (str.to.re "/\x0a"))))
(check-sat)
