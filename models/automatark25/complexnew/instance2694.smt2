(declare-const X String)
; (^\d*\.\d{2}$)
(assert (str.in.re X (re.++ (str.to.re "\x0a") (re.* (re.range "0" "9")) (str.to.re ".") ((_ re.loop 2 2) (re.range "0" "9")))))
; /\/[a-z]{2}\/testcon.php$/U
(assert (str.in.re X (re.++ (str.to.re "//") ((_ re.loop 2 2) (re.range "a" "z")) (str.to.re "/testcon") re.allchar (str.to.re "php/U\x0a"))))
; (^\-?[0-9]*\.?[0-9]+$)
(assert (str.in.re X (re.++ (str.to.re "\x0a") (re.opt (str.to.re "-")) (re.* (re.range "0" "9")) (re.opt (str.to.re ".")) (re.+ (re.range "0" "9")))))
; ^[0-9]{5}(-[0-9]{4})?$
(assert (str.in.re X (re.++ ((_ re.loop 5 5) (re.range "0" "9")) (re.opt (re.++ (str.to.re "-") ((_ re.loop 4 4) (re.range "0" "9")))) (str.to.re "\x0a"))))
(check-sat)
