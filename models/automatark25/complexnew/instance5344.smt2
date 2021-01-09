(declare-const X String)
; Strip-Player.*MyAgent.*\x2Fnewsurfer4\x2F
(assert (str.in.re X (re.++ (str.to.re "Strip-Player\x1b") (re.* re.allchar) (str.to.re "MyAgent") (re.* re.allchar) (str.to.re "/newsurfer4/\x0a"))))
; /(Windows Phone|iPhone|BlackBerry|Mobile|Android|Opera Mini|Opera Mobile|SymbianOS)/
(assert (str.in.re X (re.++ (str.to.re "/") (re.union (str.to.re "Windows Phone") (str.to.re "iPhone") (str.to.re "BlackBerry") (str.to.re "Mobile") (str.to.re "Android") (str.to.re "Opera Mini") (str.to.re "Opera Mobile") (str.to.re "SymbianOS")) (str.to.re "/\x0a"))))
; myInstance\.myMethod(.*)\(.*myParam.*\)
(assert (str.in.re X (re.++ (str.to.re "myInstance.myMethod") (re.* re.allchar) (str.to.re "(") (re.* re.allchar) (str.to.re "myParam") (re.* re.allchar) (str.to.re ")\x0a"))))
(check-sat)
