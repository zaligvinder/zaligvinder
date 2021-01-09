(declare-const X String)
; /^"|'+(.*)+"$|'$/
(assert (not (str.in.re X (re.union (str.to.re "/\x22") (re.++ (re.+ (str.to.re "'")) (re.+ (re.* re.allchar)) (str.to.re "\x22")) (str.to.re "'/\x0a")))))
(check-sat)
