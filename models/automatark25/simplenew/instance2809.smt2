(declare-const X String)
; /\x00\.\x00\.\x00[\x2f\x5c]/R
(assert (str.in.re X (re.++ (str.to.re "/\x00.\x00.\x00") (re.union (str.to.re "/") (str.to.re "\x5c")) (str.to.re "/R\x0a"))))
(check-sat)
