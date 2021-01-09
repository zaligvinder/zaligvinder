(declare-const X String)
; /filename=[^\n]*\x2emppl/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".mppl/i\x0a"))))
; /[a-z]\x3d[a-f\d]{126}/P
(assert (str.in.re X (re.++ (str.to.re "/") (re.range "a" "z") (str.to.re "=") ((_ re.loop 126 126) (re.union (re.range "a" "f") (re.range "0" "9"))) (str.to.re "/P\x0a"))))
; ^((\.\./|[a-zA-Z0-9_/\-\\])*\.[a-zA-Z0-9]+)$
(assert (str.in.re X (re.++ (str.to.re "\x0a") (re.* (re.union (str.to.re "../") (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to.re "_") (str.to.re "/") (str.to.re "-") (str.to.re "\x5c"))) (str.to.re ".") (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9"))))))
; X-Mailer\x3a\s+cyber@yahoo\x2EcomcuAgent
(assert (not (str.in.re X (re.++ (str.to.re "X-Mailer:\x13") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "cyber@yahoo.comcuAgent\x0a")))))
(check-sat)
