(declare-const X String)
; Strip-Player.*MyAgent.*\u{2F}newsurfer4\u{2F}
(assert (str.in_re X (re.++ (str.to_re "Strip-Player\u{1b}") (re.* re.allchar) (str.to_re "MyAgent") (re.* re.allchar) (str.to_re "/newsurfer4/\u{a}"))))
; /(Windows Phone|iPhone|BlackBerry|Mobile|Android|Opera Mini|Opera Mobile|SymbianOS)/
(assert (str.in_re X (re.++ (str.to_re "/") (re.union (str.to_re "Windows Phone") (str.to_re "iPhone") (str.to_re "BlackBerry") (str.to_re "Mobile") (str.to_re "Android") (str.to_re "Opera Mini") (str.to_re "Opera Mobile") (str.to_re "SymbianOS")) (str.to_re "/\u{a}"))))
; myInstance\.myMethod(.*)\(.*myParam.*\)
(assert (str.in_re X (re.++ (str.to_re "myInstance.myMethod") (re.* re.allchar) (str.to_re "(") (re.* re.allchar) (str.to_re "myParam") (re.* re.allchar) (str.to_re ")\u{a}"))))
(check-sat)
