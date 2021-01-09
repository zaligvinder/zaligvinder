(declare-const X String)
; ^([a-zA-Z]+(.)?[\s]*)$
(assert (not (str.in.re X (re.++ (str.to.re "\x0a") (re.+ (re.union (re.range "a" "z") (re.range "A" "Z"))) (re.opt re.allchar) (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")))))))
(check-sat)
