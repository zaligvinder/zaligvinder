(declare-const X String)
; /^[^\x00][^\x00\x01]+$/
(assert (not (str.in.re X (re.++ (str.to.re "/") (re.comp (str.to.re "\x00")) (re.+ (re.union (str.to.re "\x00") (str.to.re "\x01"))) (str.to.re "/\x0a")))))
(check-sat)
