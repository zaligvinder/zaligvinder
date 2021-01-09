(declare-const X String)
; Subject\x3A[^\n\r]*Arrow[^\n\r]*whenu\x2Ecom
(assert (str.in.re X (re.++ (str.to.re "Subject:") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "Arrow") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "whenu.com\x13\x0a"))))
; /\/setup.cgi.*?TimeToLive=[^&]*?(%60|\x60)/iU
(assert (str.in.re X (re.++ (str.to.re "//setup") re.allchar (str.to.re "cgi") (re.* re.allchar) (str.to.re "TimeToLive=") (re.* (re.comp (str.to.re "&"))) (re.union (str.to.re "%60") (str.to.re "`")) (str.to.re "/iU\x0a"))))
(check-sat)
