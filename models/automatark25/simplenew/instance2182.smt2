(declare-const X String)
; ^[a-z\.]*\s?([a-z\-\']+\s)+[a-z\-\']+$
(assert (str.in.re X (re.++ (re.* (re.union (re.range "a" "z") (str.to.re "."))) (re.opt (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (re.+ (re.++ (re.+ (re.union (re.range "a" "z") (str.to.re "-") (str.to.re "'"))) (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")))) (re.+ (re.union (re.range "a" "z") (str.to.re "-") (str.to.re "'"))) (str.to.re "\x0a"))))
(check-sat)
