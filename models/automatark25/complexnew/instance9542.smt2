(declare-const X String)
; (CREATE|ALTER) +(PROCEDURE|PROC|FUNCTION|VIEW) *(\[(.*)\]|(.*))
(assert (not (str.in.re X (re.++ (re.union (str.to.re "CREATE") (str.to.re "ALTER")) (re.+ (str.to.re " ")) (re.union (str.to.re "PROCEDURE") (str.to.re "PROC") (str.to.re "FUNCTION") (str.to.re "VIEW")) (re.* (str.to.re " ")) (re.union (re.++ (str.to.re "[") (re.* re.allchar) (str.to.re "]")) (re.* re.allchar)) (str.to.re "\x0a")))))
; httphost[^\n\r]*www\x2Emaxifiles\x2Ecom
(assert (str.in.re X (re.++ (str.to.re "httphost") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "www.maxifiles.com\x0a"))))
(check-sat)
