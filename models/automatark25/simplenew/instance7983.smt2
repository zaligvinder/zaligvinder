(declare-const X String)
; Subject\x3a.*Host\x3a.*\x2Fproducts\x2Fspyblocs\x2F\sinternalcyber@yahoo\x2EcomHeadersRedirection
(assert (not (str.in.re X (re.++ (str.to.re "Subject:") (re.* re.allchar) (str.to.re "Host:") (re.* re.allchar) (str.to.re "/products/spyblocs/\x13") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "internalcyber@yahoo.comHeadersRedirection\x0a")))))
(check-sat)
