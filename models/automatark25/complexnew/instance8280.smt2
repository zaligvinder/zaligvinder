(declare-const X String)
; configINTERNAL\.ini.*SecureNet\s+User-Agent\x3Aregister\.asp
(assert (not (str.in.re X (re.++ (str.to.re "configINTERNAL.ini") (re.* re.allchar) (str.to.re "SecureNet") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "User-Agent:register.asp\x0a")))))
; ^((([+])?[1])?\s{0,1}\d{3}\s{0,1}\d{3}\s{0,1}\d{4})$
(assert (str.in.re X (re.++ (str.to.re "\x0a") (re.opt (re.++ (re.opt (str.to.re "+")) (str.to.re "1"))) (re.opt (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) ((_ re.loop 3 3) (re.range "0" "9")) (re.opt (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) ((_ re.loop 3 3) (re.range "0" "9")) (re.opt (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) ((_ re.loop 4 4) (re.range "0" "9")))))
; ^\b(29[0-9]|2[0-9][0-9]|[01]?[0-9][0-9]?)\\/(29[0-9]|2[0-9][0-9]|[01]?[0-9][0-9]?)$
(assert (not (str.in.re X (re.++ (re.union (re.++ (str.to.re "29") (re.range "0" "9")) (re.++ (str.to.re "2") (re.range "0" "9") (re.range "0" "9")) (re.++ (re.opt (re.union (str.to.re "0") (str.to.re "1"))) (re.range "0" "9") (re.opt (re.range "0" "9")))) (str.to.re "\x5c/") (re.union (re.++ (str.to.re "29") (re.range "0" "9")) (re.++ (str.to.re "2") (re.range "0" "9") (re.range "0" "9")) (re.++ (re.opt (re.union (str.to.re "0") (str.to.re "1"))) (re.range "0" "9") (re.opt (re.range "0" "9")))) (str.to.re "\x0a")))))
; \x2Fcgi\x2Flogurl\.cgi.*User-Agent\x3A.*Host\x3Awww\x2EZSearchResults\x2Ecom
(assert (not (str.in.re X (re.++ (str.to.re "/cgi/logurl.cgi") (re.* re.allchar) (str.to.re "User-Agent:") (re.* re.allchar) (str.to.re "Host:www.ZSearchResults.com\x13\x0a")))))
(check-sat)
