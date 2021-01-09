(declare-const X String)
; [\dA-Za-z]+
(assert (str.in.re X (re.++ (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z"))) (str.to.re "\x0a"))))
; /filename=[^\n]*\x2exml/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".xml/i\x0a")))))
; ^(\d{4})-((0[1-9])|(1[0-2]))-(0[1-9]|[12][0-9]|3[01])$
(assert (not (str.in.re X (re.++ ((_ re.loop 4 4) (re.range "0" "9")) (str.to.re "-") (re.union (re.++ (str.to.re "0") (re.range "1" "9")) (re.++ (str.to.re "1") (re.range "0" "2"))) (str.to.re "-") (re.union (re.++ (str.to.re "0") (re.range "1" "9")) (re.++ (re.union (str.to.re "1") (str.to.re "2")) (re.range "0" "9")) (re.++ (str.to.re "3") (re.union (str.to.re "0") (str.to.re "1")))) (str.to.re "\x0a")))))
; \x3BCIAKeylogger-ProHost\x3aproductscs\x2Eshopperreports\x2Ecom
(assert (not (str.in.re X (str.to.re ";CIAKeylogger-ProHost:productscs.shopperreports.com\x0a"))))
; ^
(assert (str.in.re X (str.to.re "\x0a")))
(check-sat)
