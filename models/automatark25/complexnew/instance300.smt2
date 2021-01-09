(declare-const X String)
; [()+-.0-9]*
(assert (str.in.re X (re.++ (re.* (re.union (str.to.re "(") (str.to.re ")") (re.range "+" ".") (re.range "0" "9"))) (str.to.re "\x0a"))))
; \{\\\*\\bkmkstart\s(.*?)\}
(assert (str.in.re X (re.++ (str.to.re "{\x5c*\x5cbkmkstart") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (re.* re.allchar) (str.to.re "}\x0a"))))
; ([0-9a-zA-Z]+)|([0-9a-zA-Z][0-9a-zA-Z\\s]+[0-9a-zA-Z]+)
(assert (not (str.in.re X (re.union (re.+ (re.union (re.range "0" "9") (re.range "a" "z") (re.range "A" "Z"))) (re.++ (str.to.re "\x0a") (re.union (re.range "0" "9") (re.range "a" "z") (re.range "A" "Z")) (re.+ (re.union (re.range "0" "9") (re.range "a" "z") (re.range "A" "Z") (str.to.re "\x5c") (str.to.re "s"))) (re.+ (re.union (re.range "0" "9") (re.range "a" "z") (re.range "A" "Z"))))))))
; \d+(/\d+)?
(assert (str.in.re X (re.++ (re.+ (re.range "0" "9")) (re.opt (re.++ (str.to.re "/") (re.+ (re.range "0" "9")))) (str.to.re "\x0a"))))
; TPSystemHost\x3AHost\x3ashow\x2Eroogoo\x2EcomX-Mailer\x3A
(assert (str.in.re X (str.to.re "TPSystemHost:Host:show.roogoo.comX-Mailer:\x13\x0a")))
(check-sat)
