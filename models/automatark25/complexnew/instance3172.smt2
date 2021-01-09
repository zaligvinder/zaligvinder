(declare-const X String)
; ^[1-9]{1,2}(.5)?$
(assert (not (str.in.re X (re.++ ((_ re.loop 1 2) (re.range "1" "9")) (re.opt (re.++ re.allchar (str.to.re "5"))) (str.to.re "\x0a")))))
; [\\""=/>](25[0-4]|2[0-4][0-9]|1\d{2}|\d{2})\.((25[0-4]|2[0-4][0-9]|1\d{2}|\d{1,2})\.){2}(25[0-4]|2[0-4][0-9]|1\d{2}|\d{2}|[1-9])\b[\\""=:;,/<]
(assert (not (str.in.re X (re.++ (re.union (str.to.re "\x5c") (str.to.re "\x22") (str.to.re "=") (str.to.re "/") (str.to.re ">")) (re.union (re.++ (str.to.re "25") (re.range "0" "4")) (re.++ (str.to.re "2") (re.range "0" "4") (re.range "0" "9")) (re.++ (str.to.re "1") ((_ re.loop 2 2) (re.range "0" "9"))) ((_ re.loop 2 2) (re.range "0" "9"))) (str.to.re ".") ((_ re.loop 2 2) (re.++ (re.union (re.++ (str.to.re "25") (re.range "0" "4")) (re.++ (str.to.re "2") (re.range "0" "4") (re.range "0" "9")) (re.++ (str.to.re "1") ((_ re.loop 2 2) (re.range "0" "9"))) ((_ re.loop 1 2) (re.range "0" "9"))) (str.to.re "."))) (re.union (re.++ (str.to.re "25") (re.range "0" "4")) (re.++ (str.to.re "2") (re.range "0" "4") (re.range "0" "9")) (re.++ (str.to.re "1") ((_ re.loop 2 2) (re.range "0" "9"))) ((_ re.loop 2 2) (re.range "0" "9")) (re.range "1" "9")) (re.union (str.to.re "\x5c") (str.to.re "\x22") (str.to.re "=") (str.to.re ":") (str.to.re ";") (str.to.re ",") (str.to.re "/") (str.to.re "<")) (str.to.re "\x0a")))))
; \x2Ephp\s+www\x2Ewebfringe\x2Ecom
(assert (str.in.re X (re.++ (str.to.re ".php") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "www.webfringe.com\x0a"))))
; ^([12]?[0-9]|3[01])$
(assert (not (str.in.re X (re.++ (re.union (re.++ (re.opt (re.union (str.to.re "1") (str.to.re "2"))) (re.range "0" "9")) (re.++ (str.to.re "3") (re.union (str.to.re "0") (str.to.re "1")))) (str.to.re "\x0a")))))
; for\x2Fproducts\x2Fspyblocs\x2FHost\x3Aocllceclbhs\x2fgth
(assert (not (str.in.re X (str.to.re "for/products/spyblocs/\x13Host:ocllceclbhs/gth\x0a"))))
(check-sat)
