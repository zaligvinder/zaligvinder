(declare-const X String)
; /(Windows Phone|iPhone|BlackBerry|Mobile|Android|Opera Mini|Opera Mobile|SymbianOS)/
(assert (not (str.in.re X (re.++ (str.to.re "/") (re.union (str.to.re "Windows Phone") (str.to.re "iPhone") (str.to.re "BlackBerry") (str.to.re "Mobile") (str.to.re "Android") (str.to.re "Opera Mini") (str.to.re "Opera Mobile") (str.to.re "SymbianOS")) (str.to.re "/\x0a")))))
(check-sat)
