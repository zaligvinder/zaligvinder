(declare-const X String)
; Days\s+HWAE\s+Host\x3APortawww\.thecommunicator\.net
(assert (not (str.in.re X (re.++ (str.to.re "Days") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "HWAE") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Host:Portawww.thecommunicator.net\x0a")))))
; ^([01]\d|2[0123])([0-5]\d){2}$
(assert (not (str.in.re X (re.++ (re.union (re.++ (re.union (str.to.re "0") (str.to.re "1")) (re.range "0" "9")) (re.++ (str.to.re "2") (re.union (str.to.re "0") (str.to.re "1") (str.to.re "2") (str.to.re "3")))) ((_ re.loop 2 2) (re.++ (re.range "0" "5") (re.range "0" "9"))) (str.to.re "\x0a")))))
; cyber@yahoo\x2Ecomconfig\x2E180solutions\x2Ecom
(assert (str.in.re X (str.to.re "cyber@yahoo.comconfig.180solutions.com\x0a")))
; ^-?([1-8]?[0-9]\.{1}\d{1,6}$|90\.{1}0{1,6}$)
(assert (not (str.in.re X (re.++ (re.opt (str.to.re "-")) (re.union (re.++ (re.opt (re.range "1" "8")) (re.range "0" "9") ((_ re.loop 1 1) (str.to.re ".")) ((_ re.loop 1 6) (re.range "0" "9"))) (re.++ (str.to.re "90") ((_ re.loop 1 1) (str.to.re ".")) ((_ re.loop 1 6) (str.to.re "0")))) (str.to.re "\x0a")))))
(check-sat)
