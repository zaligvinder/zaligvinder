(declare-const X String)
; Subject\x3A[^\n\r]*Arrow[^\n\r]*whenu\x2Ecom
(assert (not (str.in.re X (re.++ (str.to.re "Subject:") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "Arrow") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "whenu.com\x13\x0a")))))
; ^-?(\d+(,\d{3})*(\.\d+)?|\d?(\.\d+))$
(assert (str.in.re X (re.++ (re.opt (str.to.re "-")) (re.union (re.++ (re.+ (re.range "0" "9")) (re.* (re.++ (str.to.re ",") ((_ re.loop 3 3) (re.range "0" "9")))) (re.opt (re.++ (str.to.re ".") (re.+ (re.range "0" "9"))))) (re.++ (re.opt (re.range "0" "9")) (str.to.re ".") (re.+ (re.range "0" "9")))) (str.to.re "\x0a"))))
; [a-f0-9]{8}-[a-f0-9]{4}-3[a-f0-9]{3}-[89ab][a-f0-9]{3}-[a-f0-9]{12}
(assert (str.in.re X (re.++ ((_ re.loop 8 8) (re.union (re.range "a" "f") (re.range "0" "9"))) (str.to.re "-") ((_ re.loop 4 4) (re.union (re.range "a" "f") (re.range "0" "9"))) (str.to.re "-3") ((_ re.loop 3 3) (re.union (re.range "a" "f") (re.range "0" "9"))) (str.to.re "-") (re.union (str.to.re "8") (str.to.re "9") (str.to.re "a") (str.to.re "b")) ((_ re.loop 3 3) (re.union (re.range "a" "f") (re.range "0" "9"))) (str.to.re "-") ((_ re.loop 12 12) (re.union (re.range "a" "f") (re.range "0" "9"))) (str.to.re "\x0a"))))
; ^([\(]{1}[0-9]{3}[\)]{1}[ ]{1}[0-9]{3}[\-]{1}[0-9]{4})$
(assert (str.in.re X (re.++ (str.to.re "\x0a") ((_ re.loop 1 1) (str.to.re "(")) ((_ re.loop 3 3) (re.range "0" "9")) ((_ re.loop 1 1) (str.to.re ")")) ((_ re.loop 1 1) (str.to.re " ")) ((_ re.loop 3 3) (re.range "0" "9")) ((_ re.loop 1 1) (str.to.re "-")) ((_ re.loop 4 4) (re.range "0" "9")))))
(check-sat)
