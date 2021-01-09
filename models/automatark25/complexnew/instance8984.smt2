(declare-const X String)
; ^[a-z]
(assert (str.in.re X (re.++ (re.range "a" "z") (str.to.re "\x0a"))))
; ^(([0-9]{3})[-]?)*[0-9]{6,7}$
(assert (not (str.in.re X (re.++ (re.* (re.++ ((_ re.loop 3 3) (re.range "0" "9")) (re.opt (str.to.re "-")))) ((_ re.loop 6 7) (re.range "0" "9")) (str.to.re "\x0a")))))
; ^\\w*$
(assert (str.in.re X (re.++ (str.to.re "\x5c") (re.* (str.to.re "w")) (str.to.re "\x0a"))))
; ^\$[0-9]+(\.[0-9][0-9])?$
(assert (str.in.re X (re.++ (str.to.re "$") (re.+ (re.range "0" "9")) (re.opt (re.++ (str.to.re ".") (re.range "0" "9") (re.range "0" "9"))) (str.to.re "\x0a"))))
(check-sat)
