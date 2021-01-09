(declare-const X String)
; www\x2Epurityscan\x2Ecom.*
(assert (not (str.in.re X (re.++ (str.to.re "www.purityscan.com") (re.* re.allchar) (str.to.re "\x0a")))))
; ^(([1-4][0-9])|(0[1-9])|(5[0-2]))\/[1-2]\d{3}$
(assert (str.in.re X (re.++ (re.union (re.++ (re.range "1" "4") (re.range "0" "9")) (re.++ (str.to.re "0") (re.range "1" "9")) (re.++ (str.to.re "5") (re.range "0" "2"))) (str.to.re "/") (re.range "1" "2") ((_ re.loop 3 3) (re.range "0" "9")) (str.to.re "\x0a"))))
; devSoft\x27s\s+Host\x3A\s+Host\x3A
(assert (str.in.re X (re.++ (str.to.re "devSoft's\x13") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Host:") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Host:\x0a"))))
(check-sat)
