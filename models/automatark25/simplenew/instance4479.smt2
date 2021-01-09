(declare-const X String)
; ^\{(.+)|^\\(.+)|(\}*)
(assert (not (str.in.re X (re.union (re.++ (str.to.re "{") (re.+ re.allchar)) (re.++ (str.to.re "\x5c") (re.+ re.allchar)) (re.++ (re.* (str.to.re "}")) (str.to.re "\x0a"))))))
(check-sat)
