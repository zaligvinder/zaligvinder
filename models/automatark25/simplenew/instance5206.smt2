(declare-const X String)
; /(Windows Phone|iPhone|BlackBerry|Mobile|Android|Opera Mini|Opera Mobile|SymbianOS)/
(assert (not (str.in_re X (re.++ (str.to_re "/") (re.union (str.to_re "Windows Phone") (str.to_re "iPhone") (str.to_re "BlackBerry") (str.to_re "Mobile") (str.to_re "Android") (str.to_re "Opera Mini") (str.to_re "Opera Mobile") (str.to_re "SymbianOS")) (str.to_re "/\u{a}")))))
(check-sat)
