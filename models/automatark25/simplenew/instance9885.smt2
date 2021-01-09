(declare-const X String)
; (\'([^\'\\]*\\.)*[^\'\\]*\')+
(assert (not (str.in.re X (re.++ (re.+ (re.++ (str.to.re "'") (re.* (re.++ (re.* (re.union (str.to.re "'") (str.to.re "\x5c"))) (str.to.re "\x5c") re.allchar)) (re.* (re.union (str.to.re "'") (str.to.re "\x5c"))) (str.to.re "'"))) (str.to.re "\x0a")))))
(check-sat)
