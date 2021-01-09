(declare-const X String)
; CUSTOM\swww\x2Elocators\x2Ecom\d+Seconds\-
(assert (str.in.re X (re.++ (str.to.re "CUSTOM") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "www.locators.com") (re.+ (re.range "0" "9")) (str.to.re "Seconds-\x0a"))))
; .*[Pp]en[Ii1][\$s].*
(assert (not (str.in.re X (re.++ (re.* re.allchar) (re.union (str.to.re "P") (str.to.re "p")) (str.to.re "en") (re.union (str.to.re "I") (str.to.re "i") (str.to.re "1")) (re.union (str.to.re "$") (str.to.re "s")) (re.* re.allchar) (str.to.re "\x0a")))))
; (CREATE|ALTER) +(PROCEDURE|PROC|FUNCTION|VIEW) *(\[(.*)\]|(.*))
(assert (not (str.in.re X (re.++ (re.union (str.to.re "CREATE") (str.to.re "ALTER")) (re.+ (str.to.re " ")) (re.union (str.to.re "PROCEDURE") (str.to.re "PROC") (str.to.re "FUNCTION") (str.to.re "VIEW")) (re.* (str.to.re " ")) (re.union (re.++ (str.to.re "[") (re.* re.allchar) (str.to.re "]")) (re.* re.allchar)) (str.to.re "\x0a")))))
(check-sat)
