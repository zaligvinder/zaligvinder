(declare-const X String)
; /filename=[^\n]*\x2ekvl/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".kvl/i\x0a"))))
; ^[a-z\.]*\s?([a-z\-\']+\s)+[a-z\-\']+$
(assert (str.in.re X (re.++ (re.* (re.union (re.range "a" "z") (str.to.re "."))) (re.opt (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (re.+ (re.++ (re.+ (re.union (re.range "a" "z") (str.to.re "-") (str.to.re "'"))) (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")))) (re.+ (re.union (re.range "a" "z") (str.to.re "-") (str.to.re "'"))) (str.to.re "\x0a"))))
(check-sat)
