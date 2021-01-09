(declare-const X String)
; config\x2E180solutions\x2Ecom\dStable\s+Host\x3a\x7D\x7C
(assert (not (str.in.re X (re.++ (str.to.re "config.180solutions.com") (re.range "0" "9") (str.to.re "Stable") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Host:}|\x0a")))))
; ^\$?(\d{1,3},?(\d{3},?)*\d{3}(\.\d{0,2})?|\d{1,3}(\.\d{0,2})?|\.\d{1,2}?)$
(assert (str.in.re X (re.++ (re.opt (str.to.re "$")) (re.union (re.++ ((_ re.loop 1 3) (re.range "0" "9")) (re.opt (str.to.re ",")) (re.* (re.++ ((_ re.loop 3 3) (re.range "0" "9")) (re.opt (str.to.re ",")))) ((_ re.loop 3 3) (re.range "0" "9")) (re.opt (re.++ (str.to.re ".") ((_ re.loop 0 2) (re.range "0" "9"))))) (re.++ ((_ re.loop 1 3) (re.range "0" "9")) (re.opt (re.++ (str.to.re ".") ((_ re.loop 0 2) (re.range "0" "9"))))) (re.++ (str.to.re ".") ((_ re.loop 1 2) (re.range "0" "9")))) (str.to.re "\x0a"))))
; ^(010|011|012)[0-9]{7}$
(assert (str.in.re X (re.++ ((_ re.loop 7 7) (re.range "0" "9")) (str.to.re "\x0a01") (re.union (str.to.re "0") (str.to.re "1") (str.to.re "2")))))
(check-sat)
