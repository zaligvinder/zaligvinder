(declare-const X String)
; (CZ-?)?[0-9]{8,10}
(assert (str.in.re X (re.++ (re.opt (re.++ (str.to.re "CZ") (re.opt (str.to.re "-")))) ((_ re.loop 8 10) (re.range "0" "9")) (str.to.re "\x0a"))))
; \x2Fcgi\x2Flogurl\.cgi\s+Host\x3AUser-Agent\x3ASurveillancecom
(assert (not (str.in.re X (re.++ (str.to.re "/cgi/logurl.cgi") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Host:User-Agent:Surveillance\x13com\x0a")))))
(check-sat)
