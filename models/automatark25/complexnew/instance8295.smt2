(declare-const X String)
; /\x3F[0-9a-z]{32}D/U
(assert (str.in.re X (re.++ (str.to.re "/?") ((_ re.loop 32 32) (re.union (re.range "0" "9") (re.range "a" "z"))) (str.to.re "D/U\x0a"))))
; ^(1?(-?\d{3})-?)?(\d{3})(-?\d{4})$
(assert (str.in.re X (re.++ (re.opt (re.++ (re.opt (str.to.re "1")) (re.opt (str.to.re "-")) (re.opt (str.to.re "-")) ((_ re.loop 3 3) (re.range "0" "9")))) ((_ re.loop 3 3) (re.range "0" "9")) (str.to.re "\x0a") (re.opt (str.to.re "-")) ((_ re.loop 4 4) (re.range "0" "9")))))
; Host\x3A\dKeylogger.*Onetrustyfiles\x2Ecom
(assert (not (str.in.re X (re.++ (str.to.re "Host:") (re.range "0" "9") (str.to.re "Keylogger") (re.* re.allchar) (str.to.re "Onetrustyfiles.com\x0a")))))
; [a-zA-Z0-9]*
(assert (not (str.in.re X (re.++ (re.* (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9"))) (str.to.re "\x0a")))))
; ^((\+)?[1-9]{1,2})?([-\s\.])?((\(\d{1,4}\))|\d{1,4})(([-\s\.])?[0-9]{1,12}){1,2}$
(assert (not (str.in.re X (re.++ (re.opt (re.++ (re.opt (str.to.re "+")) ((_ re.loop 1 2) (re.range "1" "9")))) (re.opt (re.union (str.to.re "-") (str.to.re ".") (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (re.union (re.++ (str.to.re "(") ((_ re.loop 1 4) (re.range "0" "9")) (str.to.re ")")) ((_ re.loop 1 4) (re.range "0" "9"))) ((_ re.loop 1 2) (re.++ (re.opt (re.union (str.to.re "-") (str.to.re ".") (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) ((_ re.loop 1 12) (re.range "0" "9")))) (str.to.re "\x0a")))))
(check-sat)
