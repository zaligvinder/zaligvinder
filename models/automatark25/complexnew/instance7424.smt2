(declare-const X String)
; Subject\x3a.*Host\x3a.*\x2Fproducts\x2Fspyblocs\x2F\sinternalcyber@yahoo\x2EcomHeadersRedirection
(assert (str.in.re X (re.++ (str.to.re "Subject:") (re.* re.allchar) (str.to.re "Host:") (re.* re.allchar) (str.to.re "/products/spyblocs/\x13") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "internalcyber@yahoo.comHeadersRedirection\x0a"))))
; /^\s+$|^$/gi
(assert (str.in.re X (re.union (re.++ (str.to.re "/") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")))) (str.to.re "/gi\x0a"))))
(check-sat)
