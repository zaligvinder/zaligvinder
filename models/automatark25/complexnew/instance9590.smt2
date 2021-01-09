(declare-const X String)
; ^\{(.+)|^\\(.+)|(\}*)
(assert (not (str.in.re X (re.union (re.++ (str.to.re "{") (re.+ re.allchar)) (re.++ (str.to.re "\x5c") (re.+ re.allchar)) (re.++ (re.* (str.to.re "}")) (str.to.re "\x0a"))))))
; www\x2Efreescratchandwin\x2Ecom\d+Server.*www\x2Ecameup\x2Ecom
(assert (str.in.re X (re.++ (str.to.re "www.freescratchandwin.com") (re.+ (re.range "0" "9")) (str.to.re "Server") (re.* re.allchar) (str.to.re "www.cameup.com\x13\x0a"))))
; ^(user=([a-z0-9]+,)*(([a-z0-9]+){1});)?(group=([a-z0-9]+,)*(([a-z0-9]+){1});)?(level=[0-9]+;)?$
(assert (str.in.re X (re.++ (re.opt (re.++ (str.to.re "user=") (re.* (re.++ (re.+ (re.union (re.range "a" "z") (re.range "0" "9"))) (str.to.re ","))) ((_ re.loop 1 1) (re.+ (re.union (re.range "a" "z") (re.range "0" "9")))) (str.to.re ";"))) (re.opt (re.++ (str.to.re "group=") (re.* (re.++ (re.+ (re.union (re.range "a" "z") (re.range "0" "9"))) (str.to.re ","))) ((_ re.loop 1 1) (re.+ (re.union (re.range "a" "z") (re.range "0" "9")))) (str.to.re ";"))) (re.opt (re.++ (str.to.re "level=") (re.+ (re.range "0" "9")) (str.to.re ";"))) (str.to.re "\x0a"))))
; ^([a-zA-Z][a-zA-Z0-9]{1,100})$
(assert (not (str.in.re X (re.++ (str.to.re "\x0a") (re.union (re.range "a" "z") (re.range "A" "Z")) ((_ re.loop 1 100) (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9")))))))
; ^\d+([^.,])?$
(assert (str.in.re X (re.++ (re.+ (re.range "0" "9")) (re.opt (re.union (str.to.re ".") (str.to.re ","))) (str.to.re "\x0a"))))
(check-sat)
